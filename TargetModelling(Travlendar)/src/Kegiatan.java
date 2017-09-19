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
    
    public String username(String uname){
        return "username " + uname;
    }
    public String id_Kegiatan(int idKegiatan){
        return "id kegiatan " + idKegiatan;
    }
    public String nm_Kegiatan(String namakegiatan){
        return "username " + namakegiatan;
    }
    public String prioritas(int utama){
        return "prioritas " + utama;
    }
    public String jam_mulai(int Mulai){
        return "jam mulai " + Mulai;
    }
    public String jam_akhir(int Akhir){
        return "jam mulai " + Akhir;
    }
}
