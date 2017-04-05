<?php
class ControllerPaymentYamoney extends Controller {
	public function index() {
		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['text_loading'] = $this->language->get('text_loading');

		$data['continue'] = $this->url->link('checkout/success');
		
		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		
		$data['total'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/yamoney.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/payment/yamoney.tpl', $data);
		} else {
			return $this->load->view('default/template/payment/yamoney.tpl', $data);
		}
	}

	public function confirm() {
		if ($this->session->data['payment_method']['code'] == 'yamoney') {
			$this->load->model('checkout/order');

			$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('yamoney_order_status_id'));
		}
	}
}
