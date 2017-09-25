public class Lokasi {
    private String namalokasi;
    private int GMT ;  
    
    public Lokasi(){
        namalokasi = null;
        GMT = 0;
    }
  
    public String getNamalokasi() {
        return namalokasi;
    }
    public void setNamalokasi(String namalokasi) {
        this.namalokasi = namalokasi;
    }
    public int getGMT() {
        return GMT;
    }
    public void setGMT(int GMT) {
        this.GMT = GMT;
    }
    public void set(String location, int gmt){
        this.namalokasi = location;
        this.GMT = gmt;
    }
}
