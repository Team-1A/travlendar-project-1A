import java.util.Scanner;

public class Transportation {
    private String transportationMode;
    String[] mode={"Mobil","Motor","Jalan Kaki","Pesawat","Transportasi Umum Darat"} ;
    String[] kec ={"60 KMpH","50 KMpH","5 KMpH","990 KMpH"," "};
    String[] umum={"Mobil","Motor"};
    String[] kecumum={"60 KMpH","40 KMpH"};
    /*
        Constructor pada class Transportation
    */
    public Transportation(){
        transportationMode = null;
    }
    /*
        Getter dan Setter pada class Transportation
    */
    public String getTransportationMode() {
        return transportationMode;
    }
    public void setTransportationMode(String transportationMode) {
        this.transportationMode = transportationMode;
    }
    /*
        Method inputTransportation() berfungsi untuk melakukan input moda transportasi dan kecepatan rata-rata
    */
    public Transportation inputTransportation() {
        Transportation transportation = new Transportation();
        Scanner scan = new Scanner(System.in);
        System.out.print("Masukan moda transportasi : ");
        String vehicle = scan.nextLine();
        transportation.setTransportationMode(vehicle);
        
        return transportation;
    }
}