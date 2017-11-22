<?php



class snmp_oid {	
	private $gpon_oid = array(
		"onu_device_type_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.10",
		"onu_hw_revision_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.3",
		"onu_match_state_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.34",
		"onu_sysuptime_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.18",
		"onu_pon_temp_oid" => "1.3.6.1.4.1.8886.18.3.6.3.1.1.18",
		"onu_reboot_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.23",
		"onu_tx_power_oid" => "1.3.6.1.4.1.8886.18.3.6.3.1.1.17",
		"onu_rx_power_oid" => "1.3.6.1.4.1.8886.18.3.6.3.1.1.16",
		"onu_status_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.17",
		"onu_last_online_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.14",
		"onu_offline_reason_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.15",
		"onu_sn_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.2",
		"onu_rf_status_oid" => "1.3.6.1.4.1.8886.18.2.6.21.3.1.2",
		"line_profile_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.6",
		"line_profile_name_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.7",
		"service_profile_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.8",
		"service_profile_name_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.9",
		"row_status_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.19",
		"description_oid" => "1.3.6.1.4.1.8886.18.3.1.3.1.1.20",
		"dtype_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.3",
		"status_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.7",
		"uni_port_link_oid" => "1.3.6.1.4.1.8886.18.3.6.5.1.1.8",
		"uni_port_admin_oid" => "1.3.6.1.4.1.8886.18.3.6.5.1.1.7",
		"uni_port_autong_oid" => "1.3.6.1.4.1.8886.18.3.6.5.1.1.15",
		"uni_port_flowctrl_oid" => "1.3.6.1.4.1.8886.18.3.6.5.1.1.17",
		"uni_port_nativevlan_oid" => "1.3.6.1.4.1.8886.18.3.6.5.1.1.20",
		"uni_port_speed_duplex_oid" => "1.3.6.1.4.1.8886.18.3.6.5.1.1.6",
		"onu_recv_power_oid" => "1.3.6.1.4.1.8886.18.3.6.3.1.1.16",
		"onu_send_power_oid" => "1.3.6.1.4.1.8886.18.3.6.3.1.1.17",
		"olt_rx_power_oid" => "1.3.6.1.4.1.8886.18.3.1.3.3.1.1",
		"uni_octets_in_ethernet_oid" => "1.3.6.1.4.1.8886.18.3.6.5.2.1.2",
		"uni_octets_out_ethernet_oid" => "1.3.6.1.4.1.8886.18.3.6.5.2.1.15",

	);
	
	private $epon_oid = array(
			"onu_device_type_oid" => "1.3.6.1.4.1.8886.18.2.6.1.1.1.12",
			"onu_hw_revision_oid" => "1.3.6.1.4.1.8886.18.2.6.1.1.1.5",
			"onu_match_state_oid" => "1.3.6.1.4.1.8886.18.2.6.1.7.1.2",
			"onu_sysuptime_oid" => "1.3.6.1.4.1.8886.18.3.6.1.1.1.18",
			"onu_pon_temp_oid" => "1.3.6.1.4.1.8886.18.2.8.1.2.1.2.1",
			"onu_reboot_oid" => "1.3.6.1.4.1.8886.18.2.6.1.3.1.1",

			"onu_tx_power_oid" => "1.3.6.1.4.1.8886.18.2.8.1.2.1.2.4",
			"onu_rx_power_oid" => "1.3.6.1.4.1.8886.18.2.8.1.2.1.2.5",
			"onu_status_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.8",
			"onu_sn_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.2",
			"row_status_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.9",	
			"line_profile_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.19",
			"line_profile_name_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.20",
			"service_profile_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.21",
			"service_profile_name_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.22",
			"description_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.15",
			"dtype_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.3",
			"status_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.10",
			"onu_last_online_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.7",
			"onu_offline_reason_oid" => "1.3.6.1.4.1.8886.18.2.1.3.1.1.17",
			"uni_port_link_oid" => "1.3.6.1.4.1.8886.18.2.6.3.1.1.2",
			"uni_port_admin_oid" => "1.3.6.1.4.1.8886.18.2.6.3.1.1.3",
			"uni_port_autong_oid" => "1.3.6.1.4.1.8886.18.2.6.3.1.1.5",
			"uni_port_flowctrl_oid" => "1.3.6.1.4.1.8886.18.2.6.3.1.1.10",
			"uni_port_speed_duplex_oid" => "1.3.6.1.4.1.8886.18.2.6.3.2.1.2",
			"illegal_onu_mac_address_oid" => "1.3.6.1.4.1.8886.18.2.1.5.1.1.1",
			"illegal_onu_login_time_oid" => "1.3.6.1.4.1.8886.18.2.1.5.1.1.2",
			"illegal_onu_row_status_oid" => "1.3.6.1.4.1.8886.18.2.1.5.1.1.3",
			"onu_recv_power_oid" => "1.3.6.1.4.1.8886.18.2.8.1.2.1.2.5",
			"onu_send_power_oid" => "1.3.6.1.4.1.8886.18.2.8.1.2.1.2.4",
			"olt_rx_power_oid" => "1.3.6.1.2.1.155.1.4.1.5.1.2",
			"uni_octets_in_ethernet_oid" => "1.3.6.1.4.1.8886.18.2.6.3.3.1.6",
			"uni_octets_out_ethernet_oid" => "1.3.6.1.4.1.8886.18.2.6.3.3.1.23",


	
	);
	
	private $olt_oid = array (
		"olt_status_oid" => "1.3.6.1.2.1.1.3.0",
		"olt_temp_oid" => '1.3.6.1.4.1.8886.1.27.2.1.1.10.0',
		"olt_cpu_oid" => '1.3.6.1.4.1.8886.18.1.7.1.1.1.4.1.0'
	);
	
	 
	
	function get_pon_oid($key, $type) {
		if ($type == "GPON") {
			$oid = $this->gpon_oid[$key];
			return $oid;
		}
		if ($type == "EPON") {
			$oid = $this->epon_oid[$key];
			return $oid;
		}
		if ($type = "OLT") {
			$oid = $this->olt_oid[$key];
			return $oid;
		}
	}
		

}



?>
