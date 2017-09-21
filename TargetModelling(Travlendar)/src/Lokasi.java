public class Lokasi {
    private String namalokasi;
    private int GMT ;  
    
    public Lokasi(){
        namalokasi = null;
        GMT = 0;
    }
    public void Namalokasi(String nmlokasi )
    {
        setNamalokasi(nmlokasi);
    }
    public void Gmt(int gmt)
    {
        setGMT(gmt);
    }
    public String namalokasi(String nl)
    {
        return "nama lokasi "+nl;
    }
    public int GMT(int gmT )
    {
        return  +gmT ;
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
}
