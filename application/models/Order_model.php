<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Order_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function get_data($where, $table)
    {
        if ($where) {
            $this->db->select('*');
            $this->db->from($table);
            $this->db->where($where);
            $query = $this->db->get();
            return $query->row();
        }
        $this->db->select('*');
        $this->db->from($table);
        return $this->db->get()->result();
    }
    public function get_inspection($where)
    {
        if ($where) {
            $this->db->select('*');
            $this->db->from('inspecciones');
            $this->db->where($where);
            $query = $this->db->get();
            return $query->row();
        }
        $this->db->select('*');
        $this->db->from('inspecciones');
        return $this->db->get()->result();
    }

    public function get_status($where)
    {
        if ($where) {
            $this->db->select('*');
            $this->db->from('tbl_orders_status');
            $this->db->where($where);
            return $this->db->get()->result();
        }
    }
    public function num_status($where)
    {
        if ($where) {
            $this->db->select('*');
            $this->db->from('tbl_orders_status');
            $this->db->where($where);
            $query = $this->db->get();
            return $query->num_rows();
        }
    }
    public function insert($data, $table)
    {
        $this->db->insert($table, $data);
        return $this->db->insert_id();
    }

    public function update($action, $id, $table)
    {
      $this->db->where($id);
      $this->db->update($table, $action);
      return $this->db->insert_id();
    }
}
