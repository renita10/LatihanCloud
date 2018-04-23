<?php

class mobil_model extends CI_Model{
	function get_all(){
		return $this->db->get('mobil')->result_array();
	}
	function find($nopol){
		return $this->db->where('nopol',$nopol)->get('nopol')->result_array();
	}
	function save($data){
		$this->db->insert('mobil',$data);
	}
	function delete($nopol){
		return $this->db->delete('mobil',array('nopol'=>$nopol));
	}
}