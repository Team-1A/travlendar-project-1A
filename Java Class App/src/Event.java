import java.util.Scanner;
import java.util.Calendar;
import java.util.Comparator;

public class Event {
    private String eventName;
    private int priority;
    private Location departureLocation;
    private Location arrivalLocation;
    private Calendar departureTime;
    private Calendar arrivalTime;
    private Calendar startEventtime;
    private Calendar endEventtime;
    private Transportation transportation;
    private Estimation estimation;
    /*
        Constructor pada class Event
    */
    public Event(){
        eventName = null;
        priority = 0;
        departureLocation = null;
        arrivalLocation = null;
        departureTime = null;
        arrivalTime = null;
        startEventtime = null;
        endEventtime = null;
        transportation = null;
        estimation = null;
    }
    /*
        Getter dan Setter pada class event
    */
    public String getEventName() {
        return eventName;
    }
    public void setEventName(String eventName) {
        this.eventName = eventName;
    }
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
    public Calendar getDepartureTime() {
        return departureTime;
    }
    public void setDepartureTime(Calendar departureTime) {
        this.departureTime = departureTime;
    }
    public Calendar getArrivalTime() {
        return arrivalTime;
    }
    public void setArrivalTime(Calendar arrivalTime) {
        this.arrivalTime = arrivalTime;
    }
     public Transportation getTransportation() {
        return transportation;
    }
    public void setTransportation(Transportation transportation) {
        this.transportation = transportation;
    }
    public Estimation getEstimation() {
        return estimation;
    }
    public void setEstimation(Estimation estimation) {
        this.estimation = estimation;
    }
    public Calendar getStartEventTime() {
        return startEventtime;
    }
    public void setStartEventTime(Calendar startEventtime) {
        this.startEventtime = startEventtime;
    }
    public Calendar getEndEventTime() {
        return endEventtime;
    }
    public void setEndEventTime(Calendar endEventtime) {
        this.endEventtime = endEventtime;
    }
    public int getPriority() {
        return priority;
    }
    public void setPriority(int priority) {
        this.priority = priority;
    }
    public void setEvent(String eventName, Location departureLocation, Location arrivalLocation, Calendar departureTime, Calendar arrivalTime, Calendar startEventtime, Calendar endEventtime, int priority, Estimation estimation, Transportation transportation) {
        this.setEventName(eventName);
        this.setDepartureLocation(departureLocation);
        this.setArrivalLocation(arrivalLocation);
        this.setDepartureTime(departureTime);
        this.setArrivalTime(arrivalTime);
        this.setStartEventTime(startEventtime);
        this.setEndEventTime(endEventtime);
        this.setPriority(priority);
        this.setEstimation(estimation);
        this.setTransportation(transportation);
    }
    public String getEvent() {
        return "\nNama acara : " + getEventName() + "\n\nLokasi asal : " + departureLocation.getLocationName() + "\nAlamat asal : " + departureLocation.getAddress() + "\nGMT lokasi asal(angka) : " + departureLocation.getTimeZone() + "\n\nLokasi acara : " + arrivalLocation.getLocationName() + "\nAlamat acara : " + arrivalLocation.getAddress() + "\nGMT lokasi acara(angka) : " + arrivalLocation.getTimeZone() + "\n\nWaktu acara mulai : " + getStartEventTime().getTime() + "\nWaktu acara selesai : " + getEndEventTime().getTime() + "\n\nWaktu berangkat : " + getDepartureTime().getTime() + "\nWaktu tiba : " + getArrivalTime().getTime() + "\n\nModa transportasi : " + getTransportation().getTransportationMode() + "\nPrioritas(1-5) : " + getPriority() + "\n";
    }
    /*
        Method inputEvent() berfungsi untuk melakukan input Event
    */
    public Event inputEvent() {
        Scanner scan = new Scanner(System.in);
        Event event = new Event();
        Calendar startTime = Calendar.getInstance();
        Calendar endTime = Calendar.getInstance();
        Calendar arriveTime = Calendar.getInstance();
        Calendar departTime = Calendar.getInstance();
        Location arriveLocation = new Location();
        Location departLocation = new Location();
        Transportation vehicle = new Transportation();
        System.out.print("Masukan nama acara : ");
        String eventLabel = scan.nextLine();
        System.out.print("Masukan tanggal acara(dd mm yyyy) : ");
        int day = Integer.parseInt(scan.next());
        int month = Integer.parseInt(scan.next());
        month = month - 1;
        int year = Integer.parseInt(scan.next());
        String dump = scan.nextLine();
        System.out.print("Lokasi asal : ");
        String previousLocation = scan.nextLine();
        System.out.print("Alamat asal : ");
        String previousAddress = scan.nextLine();
        System.out.print("GMT lokasi asal(angka): ");
        int previousTimeZone = Integer.parseInt(scan.nextLine());
        departLocation.setLocation(previousLocation, previousAddress, previousTimeZone);
        System.out.print("Lokasi acara : ");
        String nextLocation = scan.nextLine();
        System.out.print("Alamat acara : ");
        String nextAddress = scan.nextLine();
        System.out.print("GMT Lokasi acara(angka): ");
        int nextTimeZone = Integer.parseInt(scan.nextLine());
        arriveLocation.setLocation(nextLocation, nextAddress, nextTimeZone);
        Estimation guess = new Estimation(arriveLocation, departLocation, vehicle);
        float distance = guess.inputDistance();
        System.out.print("Moda Transportasi : ");
        String vehicleMode = scan.nextLine();
        vehicle.setTransportationMode(vehicleMode);
        System.out.print("Prioritas(1-5) : ");
        int preference = Integer.parseInt(scan.nextLine());
        int length = guess.inputEstimation();
        System.out.print("Masukan jam acara mulai(hh mm) : ");
        int startHour = Integer.parseInt(scan.next());
        int startMinute = Integer.parseInt(scan.next());
        int startSecond = 0;
        startTime.set(year, month, day, startHour, startMinute, startSecond);
        System.out.print("Masukan jam acara selesai(hh mm) : ");
        int endHour = Integer.parseInt(scan.next());
        int endMinute = Integer.parseInt(scan.next());
        int endSecond = 0;
        endTime.set(year, month, day, endHour, endMinute, endSecond);
        System.out.print("Masukan jam tiba(hh mm) : ");
        int arrivalHour = Integer.parseInt(scan.next());
        int arrivalMinute = Integer.parseInt(scan.next());
        int arrivalSecond = 0;
        arriveTime.set(year, month, day, arrivalHour, arrivalMinute, arrivalSecond);
        int departureYear = year - (length/5256000);
        int departureMonth = month - (length/432000);
        int departureDay = day - (length/1440);
        int departureHour = arrivalHour - (length/60);
        int departureMinute = arrivalMinute - (length%60);
        int departureSecond = 0;
        departTime.set(departureYear, departureMonth, departureDay, departureHour, departureMinute, departureSecond);
        System.out.println();
        event.setEvent(eventLabel, departLocation, arriveLocation, departTime, arriveTime, startTime, endTime, preference, guess, vehicle);
        
        return event;
    }
    /*
        eventComparator berfungsi untuk membandingkan departure time tiap event agar dapat dilakukan sorting
    */
    public static Comparator<Event> eventComparator = new Comparator<Event>() {
        @Override
        public int compare(Event event1, Event event2) {
            Calendar departureTime1 = event1.getDepartureTime();
            Calendar departureTime2 = event2.getArrivalTime();
            
            return departureTime1.compareTo(departureTime2);
        }
    };
}