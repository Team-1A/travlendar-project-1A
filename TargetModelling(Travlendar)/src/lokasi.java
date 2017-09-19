/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author RohmatDasuki
 */
public class lokasi extends Kegiatan {
    public String namalokasi;
    public int GMT ;  
    public void Namalokasi(String nmlokasi )
    {
        namalokasi = nmlokasi;
    }
    public void Gmt(int gmt)
    {
        GMT=gmt;
    }
    public String namalokasi(String nl)
    {
        return "nama lokasi "+nl;
    }
    public int GMT(int gmT )
    {
        return  +gmT ;
    }
}
