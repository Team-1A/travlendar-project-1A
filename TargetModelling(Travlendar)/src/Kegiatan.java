/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
public class Kegiatan {
    public String username;
    public int id_Kegiatan;
    public String nm_Kegiatan;
    public int prioritas;
    public int jam_mulai;
    public int jam_akhir;
    
    public void userName(String usernm){
        username = usernm;
    }
    public void idKegiatan(int id){
        id_Kegiatan = id;
    }
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
        jam_akhir = akhir
    }
}
