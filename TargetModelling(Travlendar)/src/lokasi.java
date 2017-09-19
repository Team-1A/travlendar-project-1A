/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author RohmatDasuki
 */
public class lokasi extends kegiatan {
    private String namalokasi;
    private int GMT ;  
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

    /**
     * @return the namalokasi
     */
    public String getNamalokasi() {
        return namalokasi;
    }

    /**
     * @param namalokasi the namalokasi to set
     */
    public void setNamalokasi(String namalokasi) {
        this.namalokasi = namalokasi;
    }

    /**
     * @return the GMT
     */
    public int getGMT() {
        return GMT;
    }

    /**
     * @param GMT the GMT to set
     */
    public void setGMT(int GMT) {
        this.GMT = GMT;
    }
}
