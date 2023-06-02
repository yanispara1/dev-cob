<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CGI_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get_data($table, $where)
    {
        if ($where) {
            $this->db->select('*');
            $this->db->from($table);
            $this->db->like($where);
            $this->db->limit(10);
            $query = $this->db->get();
            return $query->result();
        }
        $this->db->select('*');
        $this->db->from($table);
        return $this->db->get()->result();
    }
}
