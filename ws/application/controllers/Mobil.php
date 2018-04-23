<?php
header("Access-Control-Allow-Origin: *");
require APPPATH . 'libraries/REST_Controller.php';

class Mobil extends REST_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('mobil_model','m');
	}

	function all_get(){
		$data = $this->m->get_all();
		$this->response($data);
	}

	function find_get(){
		$kode = $this->get('kode');
		$data = $this->m->find($kode);
		$this->response($data);
	}

	function delete_get(){
		$nopol = $this->get('nopol');
		$data =$this->m->delete($nopol);
		$this->response($data);
	}

	function save_post(){
		$data = $this->input->post();
		$this->m->save($data);
	}

}