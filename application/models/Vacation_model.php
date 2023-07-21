
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

  public function update2($action, $table, $where)
  {
      $this->db->update($table, $action, $where);
      return $this->db->insert_id();
  }

  public function sumar($table,$campo)
  {   
      $this->db->select_sum($campo);
      $query = $this->db->get($table);
     
      return $query->row();

  }



  public function get_data($table, $where)
  {
      if ($where) {
          $this->db->select('*');
          $this->db->from($table);
          $this->db->where($where);
          $query = $this->db->get();
          return $query->result();
      }
      $this->db->select('*');
      $this->db->from($table);
      return $this->db->get()->result();
  }

  public function delete($table, $id, $colum)
  {
      $this->db->select('*');
      $this->db->from($table);
      $this->db->where($colum, $id);
      $this->db->limit(1);
      $query = $this->db->get();
      if ($query->num_rows() == 1) {
          $this->db->where($colum, $id);
          $this->db->delete($table);
          return true;
      } else {
          return false;
      }
  }


}
