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
    public function q($where = null)
    {
        if ($where) {
            $this->db->select('user.*');
            $this->db->select('rol.*');
            $this->db->select('ran.*');
            $this->db->select('sts.*');
            $this->db->from('tbl_users user');
            $this->db->join('tbl_rol rol', 'rol.id_rol = user.rol', 'LEFT');
            $this->db->join('tbl_status sts', 'sts.id_status = user.val_user', 'LEFT');
            $this->db->join('tbl_ranges ran', 'ran.id_range = user.range_user', 'LEFT');
            $this->db->where($where);
            $query = $this->db->get();
            return $query->row();
        }
        $this->db->select('user.*');
        $this->db->select('rol.*');
        $this->db->select('ran.*');
        $this->db->select('sts.*');
        $this->db->from('tbl_users user');
        $this->db->join('tbl_rol rol', 'rol.id_rol = user.rol', 'LEFT');
        $this->db->join('tbl_status sts', 'sts.id_status = user.val_user', 'LEFT');
        $this->db->join('tbl_ranges ran', 'ran.id_range = user.range_user', 'LEFT');
        return $this->db->get()->result();
    }
}
