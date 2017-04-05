<?php
class ControllerModuleCategoryMainPage extends Controller {
	public function index() {
		$this->load->language('module/category_main_page');

		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['man_clothes'] = $this->url->link('product/category&path=59');
		$data['women_clothes'] = $this->url->link('product/category&path=60');
		$data['accessories'] = $this->url->link('product/category&path=61');
		
		$this->load->model('catalog/category');
		$this->load->model('tool/image');
		
		$data['categories'] = array();
		
		$categories = $this->model_catalog_category->getCategories(0);
				
		foreach($categories as $category){
			$data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'],
				'href' 		  => $this->url->link('product/category', 'path=' . $category['category_id']),
				'image'       => $this->model_tool_image->resize($category['image'], '247', '360')
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category_main_page.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/category_main_page.tpl', $data);
		} else {
			return $this->load->view('default/template/module/category_main_page.tpl', $data);
		}
	}
}