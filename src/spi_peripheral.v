/*
 * Copyright (c) 2026 Mark Khairallah
 * SPDX-License-Identifier: Apache-2.0
 */

 `default_nettype none

module spi_peripheral (
    input  wire       clk,      // clock
    input  wire       rst_n,    // reset_n - low to reset
    input  wire       nCS,      // Chip Select
    input  wire       SCLK,     //
    input  wire       COPI,     //Controller out, Peripheral in
    output reg [7:0] en_reg_out_7_0,
    output reg [7:0] en_reg_out_15_8,
    output reg [7:0] en_reg_pwm_7_0,
    output reg [7:0] en_reg_pwm_15_8,
    output reg [7:0] pwm_duty_cycle
);
