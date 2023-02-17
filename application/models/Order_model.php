<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Order_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function get_orders($where)
    {
        if ($where) {
            $this->db->select('*');
            $this->db->from('tbl_orders_services');
            $this->db->where($where);
            $query = $this->db->get();
            return $query->row();
        }
        $this->db->select('*');
        $this->db->from('tbl_orders_services');
        return $this->db->get()->result();
    }
}
