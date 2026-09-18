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
    reg sclk_sync0, sclk_sync1, ncs_sync0, ncs_sync1, copi_sync0, copi_sync1;
);


    always @(posedge clk or negedge rst_n)begin
        if (!rst_n) begin
            sclk_sync0 <= 0;
            sclk_sync1 <= 0;
        end else begin
            sclk_sync0 <=SCLK;
            sclk_sync1 <=sclk_sync0;
        end
    end

    always @(posedge clk or negedge rst_n)begin
        if (!rst_n) begin
            ncs_sync0 <= 0;
            ncs_sync1 <= 0;
        end else begin
            ncs_sync0 <=nCS;
            ncs_sync1 <=ncs_sync0;
        end
    end

    always @(posedge clk or negedge rst_n)begin
        if (!rst_n) begin
            copi_sync0 <= 0;
            copi_sync1 <= 0;
        end else begin
            copi_sync0 <=COPI;
            copi_sync1 <=copi_sync0;
        end
    end

