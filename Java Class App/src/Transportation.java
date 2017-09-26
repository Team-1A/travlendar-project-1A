import java.util.Scanner;

public class Transportation {
    private String transportationMode;
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