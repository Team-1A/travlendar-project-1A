
public class transportasi extends kegiatan{
    private String jenis_kendaraan;
    
    public transportasi(){
        jenis_kendaraan = null;
    }
    
    public void jenisKendaraan(String kendaraan){
        setJenis_kendaraan(kendaraan);
    }
    
    public String jenis_kendaraan(String jeniskendaraan){
        return "kendaraan " + jeniskendaraan;
    }


    public String getJenis_kendaraan() {
        return jenis_kendaraan;
    }

    /**
     * @param jenis_kendaraan the jenis_kendaraan to set
     */
    public void setJenis_kendaraan(String jenis_kendaraan) {
        this.jenis_kendaraan = jenis_kendaraan;
    }
}
