<?php

class Auth{
	function validasi($user,$pass){
		$obj =& get_instance();
		$r = $obj->db->where([
			'username' => $user,
			'password' => md5($pass)
		])->get('user')->row_array();
		if(count($r)>0){
			return true;
		}else{
			return false;
		}
	}
}