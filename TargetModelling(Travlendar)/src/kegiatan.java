//tambaha estimasi waktu 
import java.util.Scanner;
import java.util.Calendar;
import java.time.Clock;
 public class kegiatan {
    private String nm_Kegiatan;
    private Calendar date ;//beberapa tambahan 
    private int prioritas;
    private Clock acara_dimulai ;
    private Clock acara_selesai ;
    private lokasi lokasi;
    private Clock jam_berangkat;
    private Clock jam_tiba ;
    
    public kegiatan(){
        nm_Kegiatan = null;
        date= null;
        prioritas = 0;
        acara_dimulai = null;
        acara_selesai = null;
        lokasi = null;
        jam_berangkat=null;
        jam_tiba=null;
    }
    public void nmKegiatan(String kegiatan){
        setNm_Kegiatan(kegiatan);
    }
    public void keutamaan(int Prio){
        setPrioritas(Prio);
    }   
    public void acaraMulai(int mulai){
        setJam_mulai(mulai);
    }
    public void acaraAkhir(int akhir){
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
        return acara_dimulai;
    }

    /**
     * @param acara_dimulai the jam_mulai to set
     */
    public void setJam_mulai(int jam_mulai) {
        this.acara_dimulai = acara_dimulai;
    }

    /**
     * @return the jam_akhir
     */
    public int getJam_akhir() {
        return acara_selesai;
    }

    /**
     * @param jam_akhir the jam_akhir to set
     */
    public void setJam_akhir(int jam_akhir) {
        this.acara_selesai = acara_selesai;
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
