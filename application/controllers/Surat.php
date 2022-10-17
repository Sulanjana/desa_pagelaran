<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Surat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model("M_surat_n1_n6");
        $this->load->model('Usermodel');
    }
    function SK_usaha()
    {

        $data = [
            'title' => 'Surat Keterangan Usaha',
            'surat_sku' => $this->M_surat_n1_n6->get('sku')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_usaha', $data);
    }
    function SK_kelakuanbaik()
    {

        $data = [
            'title' => 'Surat Keterangan Kelakuan Baik',
            'sk_kb' => $this->M_surat_n1_n6->get('sk_kelakuanbaik')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_kelakuanbaik', $data);
    }
    function SK_bedanama()
    {

        $data = [
            'title' => 'Surat Keterangan Beda Nama',
            'sk_bedanama' => $this->M_surat_n1_n6->get('sk_bedanama')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_bedanama', $data);
    }
    function SK_belumkerja()
    {

        $data = [
            'title' => 'Surat Keterangan Belum Bekerja',
            'sk_belumkerja' => $this->M_surat_n1_n6->get('sk_belumkerja')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_belumbekerja', $data);
    }
    function SK_bmr()
    {

        $data = [
            'title' => 'Surat Keterangan Belum Memiliki Rumah',
            'sk_bmr' => $this->M_surat_n1_n6->get('sk_bmr')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_bmr', $data);
    }
    function SK_belummenikah()
    {

        $data = [
            'title' => 'Surat Keterangan Belum Menikah',
            'sk_belummenikah' => $this->M_surat_n1_n6->get('sk_belummenikah')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_belummenikah', $data);
    }
    function SK_bp()
    {

        $data = [
            'title' => 'Surat Keterangan Biaya Penguburan',
            'sk_bp' => $this->M_surat_n1_n6->get('sk_bp')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_bp', $data);
    }
    function SK_kehilangan()
    {

        $data = [
            'title' => 'Surat Keterangan Kehilangan',
            'sk_kehilangan' => $this->M_surat_n1_n6->get('sk_kehilangan')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_kehilangan', $data);
    }
    function SK_penghasilan()
    {

        $data = [
            'title' => 'Surat Keterangan Penghasilan',
            'sk_penghasilan' => $this->M_surat_n1_n6->get('sk_penghasilan')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_penghasilan', $data);
    }
    function SK_ptt()
    {

        $data = [
            'title' => 'Surat Keterangan Pernikahan Tak Tercatat',
            'sk_ptt' => $this->M_surat_n1_n6->get('sk_ptt')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_ptt', $data);
    }
    function SK_rumahrubuh()
    {

        $data = [
            'title' => 'Surat Keterangan Rumah Rubuh',
            'sk_rumahrubuh' => $this->M_surat_n1_n6->get('sk_rumahrubuh')->result_array(),
        ];
        $this->template->load('administrator/template', 'administrator/mod_layanan/sk_rumahrubuh', $data);
    }
}
