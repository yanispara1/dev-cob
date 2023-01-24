
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Correspondence_model extends CI_Model
{

    public function dataReceived($where)
    {
        // ubicación JSON online
        if($where != 1){
            $this->db->select('c.*');
            $this->db->select('d.*');
            $this->db->from('tbl_received_corr c');
            $this->db->join('tbl_rol d', 'd.id_rol = c.decree');
            $this->db->where('c.decree', $where);
            return $this->db->get()->result();
        }
        $this->db->select('c.*');
        $this->db->select('d.*');
        $this->db->from('tbl_received_corr c');
        $this->db->join('tbl_rol d', 'd.id_rol = c.decree');
        return $this->db->get()->result();
    }

    public function get_record($where, $table)
    {

        if ($where != null) {
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
