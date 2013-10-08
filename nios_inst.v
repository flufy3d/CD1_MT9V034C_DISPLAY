  //Example instantiation for system 'nios'
  nios nios_inst
    (
      .bidir_port_to_and_from_the_SCL        (bidir_port_to_and_from_the_SCL),
      .bidir_port_to_and_from_the_SDA        (bidir_port_to_and_from_the_SDA),
      .clk_0                                 (clk_0),
      .data0_to_the_epcs_flash_controller_0  (data0_to_the_epcs_flash_controller_0),
      .dclk_from_the_epcs_flash_controller_0 (dclk_from_the_epcs_flash_controller_0),
      .reset_n                               (reset_n),
      .sce_from_the_epcs_flash_controller_0  (sce_from_the_epcs_flash_controller_0),
      .sdo_from_the_epcs_flash_controller_0  (sdo_from_the_epcs_flash_controller_0),
      .zs_addr_from_the_sdram_0              (zs_addr_from_the_sdram_0),
      .zs_ba_from_the_sdram_0                (zs_ba_from_the_sdram_0),
      .zs_cas_n_from_the_sdram_0             (zs_cas_n_from_the_sdram_0),
      .zs_cke_from_the_sdram_0               (zs_cke_from_the_sdram_0),
      .zs_cs_n_from_the_sdram_0              (zs_cs_n_from_the_sdram_0),
      .zs_dq_to_and_from_the_sdram_0         (zs_dq_to_and_from_the_sdram_0),
      .zs_dqm_from_the_sdram_0               (zs_dqm_from_the_sdram_0),
      .zs_ras_n_from_the_sdram_0             (zs_ras_n_from_the_sdram_0),
      .zs_we_n_from_the_sdram_0              (zs_we_n_from_the_sdram_0)
    );

