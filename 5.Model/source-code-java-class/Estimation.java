
import java.util.Scanner;

public class Estimation {
    private Location departureLocation;
    private Location arrivalLocation;
    private Transportation transportation;
    private float distance;
    private int estimation;
    /*
        Constructor pada class Estimation
    */
    public Estimation(Location location1, Location location2, Transportation transportation1) {
        departureLocation = location1;
        arrivalLocation = location2;
        transportation = transportation1;
        distance = 0;
        estimation = 0;
    }
    /*
        Getter dan Setter pada class Estimation
    */
    public Location getDepartureLocation() {
        return departureLocation;
    }
    public void setDepartureLocation(Location departureLocation) {
        this.departureLocation = departureLocation;
    }
    public Location getArrivalLocation() {
        return arrivalLocation;
    }
    public void setArrivalLocation(Location arrivalLocation) {
        this.arrivalLocation = arrivalLocation;
    }
    public float getDistance() {
        return distance;
    }
    public Transportation getTransportation() {
        return transportation;
    }
    public void setTransportation(Transportation transportation) {
        this.transportation = transportation;
    }
    public void setDistance(float distance) {
        this.distance = distance;
    }
    public float geTimeEstimation() {
        return estimation;
    }
    public void setEstimation(int timeEstimation) {
        this.estimation = timeEstimation;
    }
    public void set(Location departureLocation, Location arrivalLocation, Transportation transportation, float distance, int estimation) {
        this.departureLocation = departureLocation;
        this.arrivalLocation = arrivalLocation;
        this.transportation = transportation;
        this.distance = distance;
        this.estimation = estimation;
    }
    /*
        Method inputEstimation() berfungsi untuk melakukan input estimasi waktu oleh user
    */
    public int inputEstimation(){
        Scanner scan = new Scanner(System.in);
        System.out.print("Masukan estimasi(menit) : ");
        int guess = Integer.parseInt(scan.nextLine());
        
        return guess;
    }
    /*
        Method inputDistance() berfungsi untuk melakukan input jarak antar lokasi event oleh user
    */
    public float inputDistance() {
        Scanner scan = new Scanner(System.in);
        System.out.print("Masukan jarak antar lokasi : ");
        float lenght = Float.parseFloat(scan.nextLine());
        
        return lenght;
    }
}