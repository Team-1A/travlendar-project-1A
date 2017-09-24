//tambaha estimasi waktu 
import java.util.Scanner;
import java.util.Calendar;


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

    public void setAcara(String title, Lokasi lokasi, Calendar jam_berangkat, Calendar jam_tiba, int penting) {
        this.setNm_Kegiatan(title);
        this.setLokasi(lokasi);
        this.setJam_berangkat(jam_berangkat);
        this.setJam_tiba(jam_tiba);
        this.setPrioritas(penting);
    }
    
    public String getAcara() {
        return "Nama acara : " + getNm_Kegiatan() + "\nTempat acara: " + lokasi.getNamalokasi() + "\nGMT acara (angka): " + lokasi.getGMT() + "\nWaktu berangkat: " + getJam_berangkat().getTime() + "\nWaktu tiba: " + getJam_tiba().getTime() + "\nPrioritas(1-5): " + getPrioritas();
    }
    
    public Kegiatan masukanAcara() {
        Scanner scan = new Scanner(System.in);
        Kegiatan event = new Kegiatan();
        Calendar time1 = Calendar.getInstance();
        Calendar time2 = Calendar.getInstance();
        Lokasi location = new Lokasi();
        System.out.print("Masukan nama acara : ");
        String title = scan.nextLine();
        System.out.print("Lokasi acara : ");
        String locationEvent = scan.nextLine();
        System.out.print("GMT acara (angka): ");
        int gmtEvent = Integer.parseInt(scan.nextLine());
        location.set(locationEvent, gmtEvent);
        System.out.print("Waktu berangkat\n");
        System.out.print("Tahun : ");
        int yearGo = Integer.parseInt(scan.nextLine());
        System.out.print("Bulan : ");
        int monthGo = Integer.parseInt(scan.nextLine());
        monthGo = monthGo - 1;
        System.out.print("Tanggal : ");
        int dayGo = Integer.parseInt(scan.nextLine());
        System.out.print("Jam : ");
        int hourGo = Integer.parseInt(scan.nextLine());
        System.out.print("Menit : ");
        int minuteGo = Integer.parseInt(scan.nextLine());
        int secondGo = 0;
        time1.set(yearGo, monthGo, dayGo, hourGo, minuteGo, secondGo);
        System.out.print("Waktu tiba\n");
        System.out.print("Tahun : ");
        int yearArrive = Integer.parseInt(scan.nextLine());
        System.out.print("Bulan : ");
        int monthArrive = Integer.parseInt(scan.nextLine());
        monthArrive = monthArrive - 1;
        System.out.print("Tanggal : ");
        int dayArrive = Integer.parseInt(scan.nextLine());
        System.out.print("Jam : ");
        int hourArrive = Integer.parseInt(scan.nextLine());
        System.out.print("Menit : ");
        int minuteArrive = Integer.parseInt(scan.nextLine());
        int secondArrive = 0;
        time2.set(yearArrive, monthArrive, dayArrive, hourArrive, minuteArrive, secondArrive);
        System.out.print("Prioritas(1-5) : ");
        int prio = Integer.parseInt(scan.nextLine());
        event.setAcara(title, location, time1, time2, prio);
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
