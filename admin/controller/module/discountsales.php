<?php
class ControllerModuleDiscountSales extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/discountsales');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('discountsales', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

                $data['discountsales_complect_discount'] = array();
                if (isset($this->request->post['discountsales_complect_discount'])) {
			$data['discountsales_complect_discount'] = $this->request->post['discountsales_complect_discount'];
		} elseif($this->config->get('discountsales_complect_discount')) {
			$data['discountsales_complect_discount'] = $this->config->get('discountsales_complect_discount');
                }
                
                $data['entry_name_complect'] = $this->language->get('entry_name_complect');
                $data['text_quantity_products'] = $this->language->get('text_quantity_products');
                $data['text_new_price'] = $this->language->get('text_new_price');
                
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_product'] = $this->language->get('entry_product');
		$data['entry_limit'] = $this->language->get('entry_limit');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_status'] = $this->language->get('entry_status');
                $data['entry_status_show_manufacturer_discount_complect'] = $this->language->get('entry_status_show_manufacturer_discount_complect');
                $data['entry_status_show_category_product_discount_complect'] = $this->language->get('entry_status_show_category_product_discount_complect');

		$data['help_product'] = $this->language->get('help_product');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['width'])) {
			$data['error_width'] = $this->error['width'];
		} else {
			$data['error_width'] = '';
		}

		if (isset($this->error['height'])) {
			$data['error_height'] = $this->error['height'];
		} else {
			$data['error_height'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/discountsales', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/discountsales', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/discountsales', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/discountsales', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}

		$data['token'] = $this->session->data['token'];

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
		if (isset($this->request->post['status_complect'])) {
			$status_complect = $this->request->post['status_complect'];
		} elseif (!empty($module_info) && isset ($module_info['status_complect'])) {
			$status_complect = $module_info['status_complect'];
		} else {
			$status_complect = array();
		}
                
                $data['status_complect'] = $status_complect;
                
		if (isset($this->request->post['limit'])) {
			$data['limit'] = $this->request->post['limit'];
		} elseif (!empty($module_info)) {
			$data['limit'] = $module_info['limit'];
		} else {
			$data['limit'] = 5;
		}

		if (isset($this->request->post['width'])) {
			$data['width'] = $this->request->post['width'];
		} elseif (!empty($module_info)) {
			$data['width'] = $module_info['width'];
		} else {
			$data['width'] = 200;
		}

		if (isset($this->request->post['height'])) {
			$data['height'] = $this->request->post['height'];
		} elseif (!empty($module_info)) {
			$data['height'] = $module_info['height'];
		} else {
			$data['height'] = 200;
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}
                
                if (isset($this->request->post['status_show_manufacturer_discount_complect'])) {
			$data['status_show_manufacturer_discount_complect'] = $this->request->post['status_show_manufacturer_discount_complect'];
		} elseif (!empty($module_info) && isset ($module_info['status_show_manufacturer_discount_complect'])) {
			$data['status_show_manufacturer_discount_complect'] = $module_info['status_show_manufacturer_discount_complect'];
		} else {
			$data['status_show_manufacturer_discount_complect'] = 0;
		}
                
                if (isset($this->request->post['status_show_category_product_discount_complect'])) {
			$data['status_show_category_product_discount_complect'] = $this->request->post['status_show_category_product_discount_complect'];
		} elseif (!empty($module_info) && isset ($module_info['status_show_category_product_discount_complect'])) {
			$data['status_show_category_product_discount_complect'] = $module_info['status_show_category_product_discount_complect'];
		} else {
			$data['status_show_category_product_discount_complect'] = 0;
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/discountsales.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/discountsales')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!$this->request->post['width']) {
			$this->error['width'] = $this->language->get('error_width');
		}

		if (!$this->request->post['height']) {
			$this->error['height'] = $this->language->get('error_height');
		}

		return !$this->error;
	}
}