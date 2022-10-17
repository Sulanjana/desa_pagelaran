<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cetak_SK extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        //load model admin
        $this->load->library('pdf');
        $this->load->model("M_surat_n1_n6");
    }
    function index($id_surat_sku)
    {
        $where = array('id_surat_sku' => $id_surat_sku);
        $data['sku'] = $this->M_surat_n1_n6->get_data($where, 'sku')->result();
        $this->load->view('surat/cetak_SKU', $data);
    }

    function sk_kelakuanbaik($id_surat_kelakuanbaik)
    {
        $where = array('id_surat_kelakuanbaik' => $id_surat_kelakuanbaik);
        $data['sk_kb'] = $this->M_surat_n1_n6->get_data($where, 'sk_kelakuanbaik')->result();
        $this->load->view('surat/cetak_sk_kelakuanbaik', $data);
    }
    function sk_bedanama($id_surat_bedanama)
    {
        $where = array('id_surat_bedanama' => $id_surat_bedanama);
        $data['sk_bedanama'] = $this->M_surat_n1_n6->get_data($where, 'sk_bedanama')->result();
        $this->load->view('surat/cetak_sk_bedanama', $data);
    }
    function sk_belumkerja($id_surat_belumkerja)
    {
        $where = array('id_surat_belumkerja' => $id_surat_belumkerja);
        $data['sk_belumkerja'] = $this->M_surat_n1_n6->get_data($where, 'sk_belumkerja')->result();
        $this->load->view('surat/cetak_sk_belumkerja', $data);
    }
    function sk_bmr($id_surat_bmr)
    {
        $where = array('id_surat_bmr' => $id_surat_bmr);
        $data['sk_bmr'] = $this->M_surat_n1_n6->get_data($where, 'sk_bmr')->result();
        $this->load->view('surat/cetak_sk_bmr', $data);
    }
    function sk_belummenikah($id_surat_belummenikah)
    {
        $where = array('id_surat_belummenikah' => $id_surat_belummenikah);
        $data['sk_belummenikah'] = $this->M_surat_n1_n6->get_data($where, 'sk_belummenikah')->result();
        $this->load->view('surat/cetak_sk_belummenikah', $data);
    }
    function sk_bp($id_surat_bp)
    {
        $where = array('id_surat_bp' => $id_surat_bp);
        $data['sk_bp'] = $this->M_surat_n1_n6->get_data($where, 'sk_bp')->result();
        $this->load->view('surat/cetak_sk_bp', $data);
    }
    function sk_kehilangan($id_surat_kehilangan)
    {
        $where = array('id_surat_kehilangan' => $id_surat_kehilangan);
        $data['sk_kehilangan'] = $this->M_surat_n1_n6->get_data($where, 'sk_kehilangan')->result();
        $this->load->view('surat/cetak_sk_kehilangan', $data);
    }
    function sk_penghasilan($id_surat_penghasilan)
    {
        $where = array('id_surat_penghasilan' => $id_surat_penghasilan);
        $data['sk_penghasilan'] = $this->M_surat_n1_n6->get_data($where, 'sk_penghasilan')->result();
        $this->load->view('surat/cetak_sk_penghasilan', $data);
    }
    function sk_ptt($id_surat_ptt)
    {
        $where = array('id_surat_ptt' => $id_surat_ptt);
        $data['sk_ptt'] = $this->M_surat_n1_n6->get_data($where, 'sk_ptt')->result();
        $this->load->view('surat/cetak_sk_ptt', $data);
    }
    function sk_rumahrubuh($id_surat_rumahrubuh)
    {
        $where = array('id_surat_rumahrubuh' => $id_surat_rumahrubuh);
        $data['sk_rumahrubuh'] = $this->M_surat_n1_n6->get_data($where, 'sk_rumahrubuh')->result();
        $this->load->view('surat/cetak_sk_rumahrubuh', $data);
    }
}
