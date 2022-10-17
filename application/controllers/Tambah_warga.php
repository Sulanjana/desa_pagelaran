<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tambah_warga extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('pdf');
        $this->load->model("M_surat_n1_n6");
        $this->load->model("Usermodel");
        $this->load->helper('date');
    }

    public function update_sku_terima($id_surat_sku)
    {
        $where = array(
            'id_surat_sku' => $id_surat_sku
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sku');
        redirect('Surat/SK_usaha');
    }
    public function update_sku_tolak($id_surat_sku)
    {
        $where = array(
            'id_surat_sku' => $id_surat_sku
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sku');
        redirect('Surat/SK_usaha');
    }
    public function update_sk_kelakuanbaik_terima($id_surat_kelakuanbaik)
    {
        $where = array(
            'id_surat_kelakuanbaik' => $id_surat_kelakuanbaik
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_kelakuanbaik');
        redirect('Surat/SK_kelakuanbaik');
    }
    public function update_sk_kelakuanbaik_tolak($id_surat_kelakuanbaik)
    {
        $where = array(
            'id_surat_kelakuanbaik' => $id_surat_kelakuanbaik
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_kelakuanbaik');
        redirect('Surat/SK_kelakuanbaik');
    }
    public function update_sk_bedanama_terima($id_surat_bedanama)
    {
        $where = array(
            'id_surat_bedanama' => $id_surat_bedanama
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_bedanama');
        redirect('Surat/SK_bedanama');
    }
    public function update_sk_bedanama_tolak($id_surat_bedanama)
    {
        $where = array(
            'id_surat_bedanama' => $id_surat_bedanama
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_bedanama');
        redirect('Surat/SK_bedanama');
    }
    public function update_sk_belumkerja_terima($id_surat_belumkerja)
    {
        $where = array(
            'id_surat_belumkerja' => $id_surat_belumkerja
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_belumkerja');
        redirect('Surat/SK_belumkerja');
    }
    public function update_sk_belumkerja_tolak($id_surat_belumkerja)
    {
        $where = array(
            'id_surat_belumkerja' => $id_surat_belumkerja
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_belumkerja');
        redirect('Surat/SK_belumkerja');
    }
    public function update_sk_bmr_terima($id_surat_bmr)
    {
        $where = array(
            'id_surat_bmr' => $id_surat_bmr
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_bmr');
        redirect('Surat/SK_bmr');
    }
    public function update_sk_bmr_tolak($id_surat_bmr)
    {
        $where = array(
            'id_surat_bmr' => $id_surat_bmr
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_bmr');
        redirect('Surat/SK_bmr');
    }
    public function update_sk_belummenikah_terima($id_surat_belummenikah)
    {
        $where = array(
            'id_surat_belummenikah' => $id_surat_belummenikah
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_belummenikah');
        redirect('Surat/SK_belummenikah');
    }
    public function update_sk_belummenikah_tolak($id_surat_belummenikah)
    {
        $where = array(
            'id_surat_belummenikah' => $id_surat_belummenikah
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_belummenikah');
        redirect('Surat/SK_belummenikah');
    }
    public function update_sk_bp_terima($id_surat_bp)
    {
        $where = array(
            'id_surat_bp' => $id_surat_bp
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_bp');
        redirect('Surat/SK_bp');
    }
    public function update_sk_bp_tolak($id_surat_bp)
    {
        $where = array(
            'id_surat_bp' => $id_surat_bp
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_bp');
        redirect('Surat/SK_bp');
    }
    public function update_sk_kehilangan_terima($id_surat_kehilangan)
    {
        $where = array(
            'id_surat_kehilangan' => $id_surat_kehilangan
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_kehilangan');
        redirect('Surat/SK_kehilangan');
    }
    public function update_sk_kehilangan_tolak($id_surat_kehilangan)
    {
        $where = array(
            'id_surat_kehilangan' => $id_surat_kehilangan
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_kehilangan');
        redirect('Surat/SK_kehilangan');
    }
    public function update_sk_penghasilan_terima($id_surat_penghasilan)
    {
        $where = array(
            'id_surat_penghasilan' => $id_surat_penghasilan
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_penghasilan');
        redirect('Surat/SK_penghasilan');
    }
    public function update_sk_penghasilan_tolak($id_surat_penghasilan)
    {
        $where = array(
            'id_surat_penghasilan' => $id_surat_penghasilan
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_penghasilan');
        redirect('Surat/SK_penghasilan');
    }
    public function update_sk_ptt_terima($id_surat_ptt)
    {
        $where = array(
            'id_surat_ptt' => $id_surat_ptt
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_ptt');
        redirect('Surat/SK_ptt');
    }
    public function update_sk_ptt_tolak($id_surat_ptt)
    {
        $where = array(
            'id_surat_ptt' => $id_surat_ptt
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_ptt');
        redirect('Surat/SK_ptt');
    }
    public function update_sk_rumahrubuh_terima($id_surat_rumahrubuh)
    {
        $where = array(
            'id_surat_rumahrubuh' => $id_surat_rumahrubuh
        );
        $data = array(
            'status_surat' => "Diterima",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_rumahrubuh');
        redirect('Surat/SK_rumahrubuh');
    }
    public function update_sk_rumahrubuh_tolak($id_surat_rumahrubuh)
    {
        $where = array(
            'id_surat_rumahrubuh' => $id_surat_rumahrubuh
        );
        $data = array(
            'status_surat' => "Ditolak",
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'sk_rumahrubuh');
        redirect('Surat/SK_rumahrubuh');
    }
    public function aktivasi_akun($no_nik)
    {
        $where = array(
            'no_nik' => $no_nik
        );
        $data = array(
            'is_active' => 1,
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'user');
        redirect('administrator/aktivasi_akun');
    }
    public function tolak_akun($no_nik)
    {
        $where = array(
            'no_nik' => $no_nik
        );
        $data = array(
            'is_active' => 0,
        );
        $this->M_surat_n1_n6->update_data($where, $data, 'user');
        redirect('administrator/aktivasi_akun');
    }
    public function hapus_akun($no_nik)
    {
        $where = array(
            'no_nik' => $no_nik
        );
        $this->M_surat_n1_n6->hapus_data($where, 'user');
        redirect('administrator/aktivasi_akun');
    }
}
