<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Staff_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function update($action, $table, $where)
    {
        $this->db->update($table, $action, $where);
        return $this->db->insert_id();
    }
    public function update_staff($data, $id)
    {
        $this->db->where('id_staff', $id);
        $this->db->update('tbl_staff', $data);
    }

    public function get_staff()
    {
        $this->db->select('p.*');
        $this->db->select('g.*');
        $this->db->select('r.*');
        $this->db->select('s.*');
        $this->db->from('tbl_staff p');
        $this->db->join('tbl_staff_grade g', 'g.id_staff_grade = p.grade_staff', 'LEFT');
        $this->db->join('tbl_rol r', 'r.id_rol = p.unit_staff', 'LEFT');
        $this->db->join('tbl_specialty s', 's.id_specialty = p.specialty_staff', 'LEFT');
        return $this->db->get()->result();
    }
    public function get_staff_row($where)
    {
        $this->db->select('p.*');
        $this->db->select('g.*');
        $this->db->select('r.*');
        $this->db->select('s.*');
        $this->db->from('tbl_staff p');
        $this->db->join('tbl_staff_grade g', 'g.id_staff_grade = p.grade_staff', 'LEFT');
        $this->db->join('tbl_rol r', 'r.id_rol = p.unit_staff', 'LEFT');
        $this->db->join('tbl_specialty s', 's.id_specialty = p.specialty_staff', 'LEFT');
        $this->db->where($where);
        return $this->db->get()->row();
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
    public function get_select($val, $table)
    {
        if ($val) {
            $this->db->select('*');
            $this->db->from($table);
            $this->db->like($val);
            $query = $this->db->get();
            return $query->result();
        }
    }
    public function get_origim($val, $table)
    {
        if ($val) {
            $this->db->select('*');
            $this->db->from($table);
            $this->db->like('name_rol', $val);
            $this->db->or_like('descr_rol', $val);
            $query = $this->db->get();
            return $query->result();
        }
    }
    public function insert($data, $table)
    {
        $this->db->insert($table, $data);
        return $this->db->insert_id();
    }
    public function get_data_table($table, $where, $row = null)
    {
        if ($row) {
            $this->db->select('*');
            $this->db->from($table);
            $this->db->where($where);
            $query = $this->db->get();
            return $query->row();
        } else {
            $this->db->select('*');
            $this->db->from($table);
            $this->db->where($where);
            $query = $this->db->get();
            return $query->result();
        }
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
    public function get_jobs($where)
    {
        $this->db->select('*');
        $this->db->from('tbl_staff_jobs');
        $this->db->where($where);
        $query = $this->db->get();
        return $query->result();
    }
}
