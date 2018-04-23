<?php
	
class Mobil extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->library('curl');
	}

	function index(){
		$data = $this->curl->simple_get("http://localhost/ws/index.php/mobil/all/X-API-KEY/1234");
		$data = json_decode($data, TRUE);
		//print_r($data); untuk menampilkan data agar berbentuk array
		//cara mengakses http://localhost/wscurl/index.php/buku/
		$this->load->view('template',[
			'content' => $this->load->view('mobil_list',[
				'data' => $data
			],TRUE)
		]);
	}

	function form(){
		$this->load->view('template',[
			'content' => $this->load->view('mobil_form','',TRUE)
		]);
	}

	function hapus($nopol){
		$this->curl->simple_get("http://localhost/ws/index.php/mobil/delete?nopol=".$nopol."&X-API-KEY=1234");

		redirect('mobil');
	}


	function save(){
		$this->curl->simple_post("http://localhost/ws/index.php/mobil/save/X-API-KEY/1234", $this->input->post());
		redirect('mobil');
	}
}