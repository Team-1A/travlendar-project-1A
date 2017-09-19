/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
 class Kegiatan {
    public String nm_Kegiatan;
    public int prioritas;
    public int jam_mulai;
    public int jam_akhir;
   
    public void nmKegiatan(String kegiatan){
        nm_Kegiatan = kegiatan;
    }
    public void keutamaan(int Prio){
        prioritas = Prio;
    }
    public void jamMulai(int mulai){
        jam_mulai = mulai;
    }
    public void jamAkhir(int akhir){
        jam_akhir = akhir;
    }
}
