/***************************************************************************/ /**
* @file i2c_leader_example.c
* @brief I2C Leader Blocking example functions
*******************************************************************************/
#include "i2c_leader_example.h"
#include "rsi_debug.h"
#include "sl_i2c_instances.h"
#include "sl_si91x_i2c.h"
#include "sl_si91x_peripheral_i2c.h"

/*******************************************************************************
 ***************************  Defines / Macros  ********************************
 ******************************************************************************/
#define INSTANCE_ZERO 0
#define INSTANCE_ONE  1
#define INSTANCE_TWO  2

#define SLI_SI915

#ifdef SLI_SI915
#define I2C_INSTANCE_USED INSTANCE_ZERO
#else
#define I2C_INSTANCE_USED INSTANCE_TWO
#endif

#define LSM6DSO_ADDR         0x6B
#define WHO_AM_I_REG         0x0F
#define WHO_AM_I_EXPECTED    0x6C

#define CTRL1_XL             0x10
#define CTRL2_G              0x11
#define CTRL3_C              0x12
#define STATUS_REG           0x1E

#define OUTX_L_G             0x22
#define OUTX_L_A             0x28

#define I2C_TX_FIFO_THRESHOLD 0
#define I2C_RX_FIFO_THRESHOLD 0

/*******************************************************************************
 *************************** LOCAL VARIABLES   *********************************
 ******************************************************************************/
static sl_i2c_instance_t i2c_instance = I2C_INSTANCE_USED;
static sl_i2c_config_t sl_i2c_config;
static boolean_t sensor_ready = false;

/*******************************************************************************
 **********************  Local Function prototypes   ***************************
 ******************************************************************************/
static uint8_t lsm6dso_read_register(uint8_t dev_addr, uint8_t reg_addr, sl_i2c_status_t *status_out);
static sl_i2c_status_t lsm6dso_read_multiple(uint8_t dev_addr, uint8_t start_reg, uint8_t *data, uint16_t len);
static sl_i2c_status_t lsm6dso_write_register(uint8_t dev_addr, uint8_t reg_addr, uint8_t value);
static sl_i2c_status_t lsm6dso_init_sensor(void);
static void lsm6dso_dump_config(void);
static void lsm6dso_read_and_print_imu(void);

/*******************************************************************************
 **************************   GLOBAL FUNCTIONS   *******************************
 ******************************************************************************/

void i2c_leader_example_init(void)
{
  sl_i2c_status_t i2c_status;

#if (I2C_INSTANCE_USED == INSTANCE_ZERO)
  sl_i2c_config = sl_i2c_i2c0_config;
#elif (I2C_INSTANCE_USED == INSTANCE_ONE)
  sl_i2c_config = sl_i2c_i2c1_config;
#elif (I2C_INSTANCE_USED == INSTANCE_TWO)
  sl_i2c_config = sl_i2c_i2c2_config;
#endif

  DEBUGINIT();

  i2c_status = sl_i2c_driver_init(i2c_instance, &sl_i2c_config);
  if (i2c_status != SL_I2C_SUCCESS) {
    DEBUGOUT("I2C init failed, code=%u\n", i2c_status);
    return;
  }
  DEBUGOUT("I2C leader init success\n");

  i2c_status = sl_i2c_driver_configure_fifo_threshold(i2c_instance,
                                                      I2C_TX_FIFO_THRESHOLD,
                                                      I2C_RX_FIFO_THRESHOLD);
  if (i2c_status != SL_I2C_SUCCESS) {
    DEBUGOUT("I2C FIFO threshold configure failed, code=%u\n", i2c_status);
    return;
  }
  DEBUGOUT("I2C FIFO threshold configured\n");

  i2c_status = sl_i2c_driver_enable_repeated_start(i2c_instance, true);
  if (i2c_status != SL_I2C_SUCCESS) {
    DEBUGOUT("Enable repeated start failed, code=%u\n", i2c_status);
    return;
  }
  DEBUGOUT("Repeated start enabled\n");
}

void i2c_leader_example_process_action(void)
{
  sl_i2c_status_t status;
  uint8_t who_am_i;

  if (!sensor_ready) {
    who_am_i = lsm6dso_read_register(LSM6DSO_ADDR, WHO_AM_I_REG, &status);

    if (status != SL_I2C_SUCCESS) {
      DEBUGOUT("WHO_AM_I read failed, code=%u\n", status);
      for (volatile uint32_t d = 0; d < 500000; d++);
      return;
    }

    DEBUGOUT("WHO_AM_I = 0x%X\n", who_am_i);

    if (who_am_i != WHO_AM_I_EXPECTED) {
      DEBUGOUT("Unexpected WHO_AM_I, sensor not ready\n");
      for (volatile uint32_t d = 0; d < 500000; d++);
      return;
    }

    status = lsm6dso_init_sensor();
    if (status != SL_I2C_SUCCESS) {
      DEBUGOUT("LSM6DSO init failed, code=%u\n", status);
      for (volatile uint32_t d = 0; d < 500000; d++);
      return;
    }

    lsm6dso_dump_config();
    DEBUGOUT("LSM6DSO init success\n");
    sensor_ready = true;
  }

  lsm6dso_read_and_print_imu();

  for (volatile uint32_t d = 0; d < 800000; d++);
}

/*******************************************************************************
 **************************   LOCAL FUNCTIONS   ********************************
 ******************************************************************************/

static uint8_t lsm6dso_read_register(uint8_t dev_addr, uint8_t reg_addr, sl_i2c_status_t *status_out)
{
  uint8_t reg = reg_addr;
  uint8_t value = 0;
  sl_i2c_status_t status;

  status = sl_i2c_driver_enable_repeated_start(i2c_instance, true);
  if (status != SL_I2C_SUCCESS) {
    *status_out = status;
    return 0;
  }

  status = sl_i2c_driver_send_data_blocking(i2c_instance, dev_addr, &reg, 1);
  if (status != SL_I2C_SUCCESS) {
    *status_out = status;
    return 0;
  }

  status = sl_i2c_driver_enable_repeated_start(i2c_instance, false);
  if (status != SL_I2C_SUCCESS) {
    *status_out = status;
    return 0;
  }

  status = sl_i2c_driver_receive_data_blocking(i2c_instance, dev_addr, &value, 1);
  *status_out = status;
  return value;
}

static sl_i2c_status_t lsm6dso_read_multiple(uint8_t dev_addr, uint8_t start_reg, uint8_t *data, uint16_t len)
{
  sl_i2c_status_t status = SL_I2C_SUCCESS;

  for (uint16_t i = 0; i < len; i++) {
    data[i] = lsm6dso_read_register(dev_addr, start_reg + i, &status);
    if (status != SL_I2C_SUCCESS) {
      return status;
    }
  }

  return SL_I2C_SUCCESS;
}

static sl_i2c_status_t lsm6dso_write_register(uint8_t dev_addr, uint8_t reg_addr, uint8_t value)
{
  uint8_t tx[2];
  tx[0] = reg_addr;
  tx[1] = value;

  return sl_i2c_driver_send_data_blocking(i2c_instance, dev_addr, tx, 2);
}

static sl_i2c_status_t lsm6dso_init_sensor(void)
{
  sl_i2c_status_t status;

  // software reset
  status = lsm6dso_write_register(LSM6DSO_ADDR, CTRL3_C, 0x01);
  if (status != SL_I2C_SUCCESS) {
    return status;
  }

  for (volatile uint32_t d = 0; d < 300000; d++);

  // BDU=1, IF_INC=1
  status = lsm6dso_write_register(LSM6DSO_ADDR, CTRL3_C, 0x44);
  if (status != SL_I2C_SUCCESS) {
    return status;
  }

  // Accel: 104 Hz, ±2g
  status = lsm6dso_write_register(LSM6DSO_ADDR, CTRL1_XL, 0x40);
  if (status != SL_I2C_SUCCESS) {
    return status;
  }

  // Gyro: 104 Hz, 250 dps
  status = lsm6dso_write_register(LSM6DSO_ADDR, CTRL2_G, 0x40);
  if (status != SL_I2C_SUCCESS) {
    return status;
  }

  for (volatile uint32_t d = 0; d < 300000; d++);

  return SL_I2C_SUCCESS;
}

static void lsm6dso_dump_config(void)
{
  sl_i2c_status_t status;
  uint8_t v_ctrl1 = lsm6dso_read_register(LSM6DSO_ADDR, CTRL1_XL, &status);
  if (status == SL_I2C_SUCCESS) {
    DEBUGOUT("CTRL1_XL = 0x%X\n", v_ctrl1);
  } else {
    DEBUGOUT("CTRL1_XL read failed, code=%u\n", status);
  }

  uint8_t v_ctrl2 = lsm6dso_read_register(LSM6DSO_ADDR, CTRL2_G, &status);
  if (status == SL_I2C_SUCCESS) {
    DEBUGOUT("CTRL2_G = 0x%X\n", v_ctrl2);
  } else {
    DEBUGOUT("CTRL2_G read failed, code=%u\n", status);
  }

  uint8_t v_status = lsm6dso_read_register(LSM6DSO_ADDR, STATUS_REG, &status);
  if (status == SL_I2C_SUCCESS) {
    DEBUGOUT("STATUS_REG = 0x%X\n", v_status);
  } else {
    DEBUGOUT("STATUS_REG read failed, code=%u\n", status);
  }
}

static void lsm6dso_read_and_print_imu(void)
{
  sl_i2c_status_t status;
  uint8_t accel_buf[6];
  uint8_t gyro_buf[6];
  uint8_t status_reg;

  int16_t ax, ay, az;
  int16_t gx, gy, gz;

  status_reg = lsm6dso_read_register(LSM6DSO_ADDR, STATUS_REG, &status);
  if (status != SL_I2C_SUCCESS) {
    DEBUGOUT("STATUS_REG read failed, code=%u\n", status);
    return;
  }

  DEBUGOUT("STATUS_REG = 0x%X\n", status_reg);

  status = lsm6dso_read_multiple(LSM6DSO_ADDR, OUTX_L_A, accel_buf, 6);
  if (status != SL_I2C_SUCCESS) {
    DEBUGOUT("Accel read failed, code=%u\n", status);
    return;
  }

  status = lsm6dso_read_multiple(LSM6DSO_ADDR, OUTX_L_G, gyro_buf, 6);
  if (status != SL_I2C_SUCCESS) {
    DEBUGOUT("Gyro read failed, code=%u\n", status);
    return;
  }

  ax = (int16_t)((accel_buf[1] << 8) | accel_buf[0]);
  ay = (int16_t)((accel_buf[3] << 8) | accel_buf[2]);
  az = (int16_t)((accel_buf[5] << 8) | accel_buf[4]);

  gx = (int16_t)((gyro_buf[1] << 8) | gyro_buf[0]);
  gy = (int16_t)((gyro_buf[3] << 8) | gyro_buf[2]);
  gz = (int16_t)((gyro_buf[5] << 8) | gyro_buf[4]);

  DEBUGOUT("ACC raw: X=%d Y=%d Z=%d | GYRO raw: X=%d Y=%d Z=%d\n",
           ax, ay, az, gx, gy, gz);
}