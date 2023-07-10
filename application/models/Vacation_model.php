
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Vacation_model extends CI_Model
{
  function __construct()
	{
		parent::__construct();
	}

  // check if the user exists

 
  public function insert($data, $table)
  {
    $this->db->insert($table, $data);
    return $this->db->insert_id();
  }

  public function update($action, $id, $table)
  {
    $this->db->where('id_user', $id);
    $this->db->update($table, $action);
    $updatedId = $this->db->get($table)->row()->id;
    return $updatedId;
  }



  public function sumar($table,$campo)
  {   
      $this->db->select_sum($campo);
      $query = $this->db->get($table);
     
      return $query->row();

  }



}
