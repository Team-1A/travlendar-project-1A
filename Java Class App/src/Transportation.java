import java.util.Scanner;

public class Transportation {
    private String transportationMode;
    private int averageSpeed;
    /*
        Constructor pada class Transportation
    */
    public Transportation(){
        transportationMode = null;
        averageSpeed = 0;
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
    public int getAverageSpeed() {
        return averageSpeed;
    }
    public void setAverageSpeed(int averageSpeed) {
        this.averageSpeed = averageSpeed;
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
        System.out.print("Masukan kecepatan rata-rata : ");
        int velocity = Integer.parseInt(scan.nextLine());
        transportation.setAverageSpeed(velocity);
        
        return transportation;
    }
}