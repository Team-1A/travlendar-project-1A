//tambaha estimasi waktu 
import java.util.Scanner;
import java.util.Calendar;
import java.time.Clock;
import java.time.Duration;

public class Kegiatan {
    private String nm_Kegiatan;
    private int prioritas;
    private Lokasi lokasi;
    private Calendar jam_berangkat;
    private Calendar jam_tiba ;
    
    public Kegiatan(){
        nm_Kegiatan = null;
        prioritas = 0;
        lokasi = null;
        jam_berangkat = null;
        jam_tiba = null;
    }
    public void nmKegiatan(String kegiatan){
        setNm_Kegiatan(kegiatan);
    }
    public void keutamaan(int Prio){
        setPrioritas(Prio);
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

    public void setAcara(String title, Clock start, Clock end, int penting) {
        this.setNm_Kegiatan(title);
        this.setPrioritas(penting);
    }
    
    public String getAcara() {
        return "Nama Acara : " + getNm_Kegiatan() + "\nWaktu Mulai (jam): " + getJam_mulai() + "\nWaktu Selesai (jam): " + getJam_akhir() + "\nPrioritas(1-5): " + getPrioritas();
    }
    
    public Kegiatan masukanAcara() {
        Scanner scan = new Scanner(System.in);
        Kegiatan event = new Kegiatan();
        Calendar time1 = Calendar.getInstance();
        Calendar time2 = Calendar.getInstance();
        Lokasi location = new Lokasi();
        System.out.print("Masukan nama acara : ");
        String title = scan.nextLine();
        System.out.print("Lokasi acara");
        System.out.print("Waktu berangkat");
        System.out.print("Tahun: ");
        int yearGo = Integer.parseInt(scan.nextLine());
        System.out.print("Bulan: ");
        int monthGo = Integer.parseInt(scan.nextLine());
        monthGo = monthGo - 1;
        System.out.print("Tanggal: ");
        int dayGo = Integer.parseInt(scan.nextLine());
        System.out.print("Jam: ");
        int hourGo = Integer.parseInt(scan.nextLine());
        System.out.print("Menit: ");
        int minuteGo = Integer.parseInt(scan.nextLine());
        int secondGo = 0;
        time1.set(yearGo, monthGo, dayGo, hourGo, minuteGo, secondGo);
        System.out.print("Waktu tiba");
        System.out.print("Tahun: ");
        int yearArrive = Integer.parseInt(scan.nextLine());
        System.out.print("Bulan: ");
        int monthArrive = Integer.parseInt(scan.nextLine());
        monthArrive = monthArrive - 1;
        System.out.print("Tanggal: ");
        int dayArrive = Integer.parseInt(scan.nextLine());
        System.out.print("Jam: ");
        int hourArrive = Integer.parseInt(scan.nextLine());
        System.out.print("Menit: ");
        int minuteArrive = Integer.parseInt(scan.nextLine());
        int secondArrive = 0;
        time1.set(yearArrive, monthArrive, dayArrive, hourArrive, minuteArrive, secondArrive);
        System.out.print("Prioritas(1-5) : ");
        int prio = Integer.parseInt(scan.nextLine());
//        Event.setAcara(judul,mulai,selesai,prio);
        return event;
    }

    /**
     * @return the lokasi
     */
    public Lokasi getLokasi() {
        return lokasi;
    }

    /**
     * @param lokasi the lokasi to set
     */
    public void setLokasi(Lokasi lokasi) {
        this.lokasi = lokasi;
    }

    /**
     * @return the jam_berangkat
     */
    public Calendar getJam_berangkat() {
        return jam_berangkat;
    }

    /**
     * @param jam_berangkat the jam_berangkat to set
     */
    public void setJam_berangkat(Calendar jam_berangkat) {
        this.jam_berangkat = jam_berangkat;
    }

    /**
     * @return the jam_tiba
     */
    public Calendar getJam_tiba() {
        return jam_tiba;
    }

    /**
     * @param jam_tiba the jam_tiba to set
     */
    public void setJam_tiba(Calendar jam_tiba) {
        this.jam_tiba = jam_tiba;
    }
}
