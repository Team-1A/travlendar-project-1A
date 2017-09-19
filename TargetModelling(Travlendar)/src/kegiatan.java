
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
 public class kegiatan {
    private String nm_Kegiatan;
    private int prioritas;
    private int jam_mulai;
    private int jam_akhir;
    
    public kegiatan(){
        nm_Kegiatan = null;
        prioritas = 0;
        jam_mulai = 0;
        jam_akhir = 0;
    }
   
    public void nmKegiatan(String kegiatan){
        setNm_Kegiatan(kegiatan);
    }
    public void keutamaan(int Prio){
        setPrioritas(Prio);
    }   
    public void jamMulai(int mulai){
        setJam_mulai(mulai);
    }
    public void jamAkhir(int akhir){
        setJam_akhir(akhir);
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

    /**
     * @return the nm_Kegiatan
     */
    public String getNm_Kegiatan() {
        return nm_Kegiatan;
    }

    /**
     * @param nm_Kegiatan the nm_Kegiatan to set
     */
    public void setNm_Kegiatan(String nm_Kegiatan) {
        this.nm_Kegiatan = nm_Kegiatan;
    }

    /**
     * @return the prioritas
     */
    public int getPrioritas() {
        return prioritas;
    }

    /**
     * @param prioritas the prioritas to set
     */
    public void setPrioritas(int prioritas) {
        this.prioritas = prioritas;
    }

    /**
     * @return the jam_mulai
     */
    public int getJam_mulai() {
        return jam_mulai;
    }

    /**
     * @param jam_mulai the jam_mulai to set
     */
    public void setJam_mulai(int jam_mulai) {
        this.jam_mulai = jam_mulai;
    }

    /**
     * @return the jam_akhir
     */
    public int getJam_akhir() {
        return jam_akhir;
    }

    /**
     * @param jam_akhir the jam_akhir to set
     */
    public void setJam_akhir(int jam_akhir) {
        this.jam_akhir = jam_akhir;
    }
    
    public void setAcara(String title, int start, int end, int penting) {
        this.setNm_Kegiatan(title);
        this.setJam_mulai(start);
        this.setJam_akhir(end);
        this.setPrioritas(penting);
    }
    
    public String getAcara() {
        return "Nama Acara : " + getNm_Kegiatan() + "\nWaktu Mulai (jam): " + getJam_mulai() + "\nWaktu Selesai (jam): " + getJam_akhir() + "\nPrioritas(1-5): " + getPrioritas();
    }
    
    public kegiatan masukanAcara() {
        Scanner scan = new Scanner(System.in);
        kegiatan Event = new kegiatan();
        System.out.print("Masukan nama acara : ");
        String judul = scan.nextLine();
        System.out.print("Waktu acara mulai (jam): ");
        int mulai = Integer.parseInt(scan.nextLine());
        System.out.print("Waktu acara selesai (jam): ");
        int selesai = Integer.parseInt(scan.nextLine());
        System.out.print("Prioritas(1-5) : ");
        int prio = Integer.parseInt(scan.nextLine());
        Event.setAcara(judul,mulai,selesai,prio);
        return Event;
    }
}
