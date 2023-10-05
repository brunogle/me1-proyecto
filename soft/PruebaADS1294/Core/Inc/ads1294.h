/*
 * adc1294.h
 *
 *  Created on: Oct 4, 2023
 *      Author: bruno
 */

#ifndef INC_ADS1294_H_
#define INC_ADS1294_H_

#define ADS1294_CS_L    		HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_RESET)
#define ADS1294_CS_H    		HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_SET)
#define ADS1294_START_L    	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_RESET)
#define ADS1294_START_H    	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_SET)
#define ADS1294_RESET_L    	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10, GPIO_PIN_RESET)
#define ADS1294_RESET_H    	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10, GPIO_PIN_SET)

#define RESET			0x06
#define START   		0x08
#define RDATAC			0x10
#define SDATAC			0x11
#define RDATA			0x12
#define RREG 			0x20
#define WREG 			0x40
#define ID_ADDR			0x00
#define CONFIG1_ADDR	0x01
#define CONFIG2_ADDR	0x02
#define CONFIG3_ADDR	0x03

#define LOFF			0x04

#define CH1SET_ADDR		0x05
#define CH2SET_ADDR		0x06
#define CH3SET_ADDR		0x07
#define CH4SET_ADDR		0x08
#define CH5SET_ADDR		0x09
#define CH6SET_ADDR		0x0A
#define CH7SET_ADDR		0x0B
#define CH8SET_ADDR		0x0C
#define RLD_SENSP   	0x0D
#define RLD_SENSN		0x0E
#define LOFF_SENSP 		0x0F
#define LOFF_SENSN 		0x10
#define LOFF_FLIP 		0x11
#define	GPIO_ADDR		0x14
#define MISC1_ADDR		0x15
#define MISC2_ADDR		0x16
#define CONFIG4_ADDR	0x17
#define ADC1_SRB1		0x20
#define ADC2_SRB1		0x20

void ads_setup_pins();

void ads_hard_reset();

void ads_set_spi_port(SPI_HandleTypeDef * spi_handle_to_set);

void ads_set_single_reg(uint8_t reg_addr, uint8_t data);

uint8_t ads_get_single_rseg(uint8_t reg_addr);

void ads_send_command(uint8_t opcode);

void ads_set_start();

void ads_unset_start();

#endif /* INC_ADS1294_H_ */
