#include "spi.h"

#include "ads1294.h"
#include "stm32f4xx_hal.h"
#include "string.h"

/*
 * Variables internas del controlador del ADS1294
 */

uint8_t tx_data[10];
uint8_t rx_data[32];
SPI_HandleTypeDef * spi_handle;
uint32_t timeout = -1;

void ads_setup_pins(){
	ADS1294_CS_L;
	ADS1294_RESET_H;
	ADS1294_START_L;
}

void ads_hard_reset(){
	ADS1294_RESET_L;
	HAL_Delay(1);
	ADS1294_RESET_H;
	HAL_Delay(10);
}

void ads_set_start(){
	ADS1294_START_H;
}

void ads_unset_start(){
	ADS1294_START_L;
}

void ads_set_spi_port(SPI_HandleTypeDef * spi_handle_to_set){
	spi_handle = spi_handle_to_set;
}

void ads_set_single_reg(uint8_t reg_addr, uint8_t data){

	memset(tx_data, 0, sizeof(tx_data));

	tx_data[0] = WREG|reg_addr;
	tx_data[1] = 0x00;
	tx_data[2] = data;

	ADS1294_CS_L;
	HAL_SPI_Transmit(spi_handle, tx_data, 3, timeout);
	ADS1294_CS_H;

	HAL_Delay(10);

}


uint8_t ads_get_single_rseg(uint8_t reg_addr){

	memset(tx_data, 0, sizeof(tx_data));
	memset(rx_data, 0, sizeof(rx_data));

	tx_data[0] = RREG|reg_addr;
	tx_data[1] = 0x00;

	ADS1294_CS_L;
	HAL_SPI_Transmit(spi_handle, tx_data, 2, timeout);
	HAL_SPI_Receive(spi_handle, rx_data, 1, timeout);
	ADS1294_CS_H;

	HAL_Delay(10);

	return rx_data[0];
}

void ads_send_command(uint8_t opcode){

	memset(tx_data, 0, sizeof(tx_data));

	tx_data[0] = opcode;

	ADS1294_CS_L;
	HAL_SPI_Transmit(spi_handle, tx_data, 1, timeout);
	ADS1294_CS_H;

	HAL_Delay(10);

}

