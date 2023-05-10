<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Staff_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get_data($table,$where)
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

}
