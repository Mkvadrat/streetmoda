<?php
class ModelShippingukraine extends Model {
	function getQuote($address) {
		$this->load->language('shipping/ukraine');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('ukraine_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if (!$this->config->get('ukraine_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {
			$quote_data = array();

			$quote_data['ukraine'] = array(
				'code'         => 'ukraine.ukraine',
				'title'        => $this->language->get('text_description'),
				'cost'         => '',
				'tax_class_id' => '',
				'text'         => ''
			);

			$method_data = array(
				'code'       => 'ukraine',
				'title'      => $this->language->get('text_title'),
				'quote'      => $quote_data,
				'sort_order' => $this->config->get('ukraine_sort_order'),
				'error'      => false
			);
		}

		return $method_data;
	}
}