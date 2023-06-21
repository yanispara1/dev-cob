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
            $this->db->like('codigo_ubigeo', $where);
            $this->db->or_like('departamento', $where);
            $this->db->or_like('provincia', $where);
            $this->db->or_like('distrito', $where);
            $query = $this->db->get();
            return $query->result();
        }
        $this->db->select('*');
        $this->db->from($table);
        return $this->db->get()->result();
    }
    public function insert_personal($table, $data)
    {
        $this->db->insert($table, $data);
        return $this->db->insert_id();
    }
}
