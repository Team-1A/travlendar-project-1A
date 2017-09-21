import java.util.Scanner;
import java.util.Calendar;
import java.util.Comparator;

public class Event {
    private String eventName;
    private int priority;
    private Location location;
    private Calendar departureTime;
    private Calendar arrivalTime ;
    /*
        Constructor pada class Event
    */
    public Event(){
        eventName = null;
        priority = 0;
        location = null;
        departureTime = null;
        arrivalTime = null;
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
    public Location getLocation() {
        return location;
    }
    public void setLocation(Location location) {
        this.location = location;
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
    public int getPriority() {
        return priority;
    }
    public void setPriority(int priority) {
        this.priority = priority;
    }
    public void setEvent(String eventName, Location location, Calendar departureTime, Calendar arrivalTime, int priority) {
        this.setEventName(eventName);
        this.setLocation(location);
        this.setDepartureTime(departureTime);
        this.setArrivalTime(arrivalTime);
        this.setPriority(priority);
    }
    public String getEvent() {
        return "\nNama acara : " + getEventName() + "\nTempat acara: " + location.getLocationName() + "\nGMT acara (angka): " + location.getTimeZone() + "\nWaktu berangkat: " + getDepartureTime().getTime() + "\nWaktu tiba: " + getArrivalTime().getTime() + "\nPrioritas(1-5): " + getPriority() + "\n";
    }
    /*
        Method inputEvent() berfungsi untuk melakukan input Event
    */
    public Event inputEvent() {
        Scanner scan = new Scanner(System.in);
        Event event = new Event();
        Calendar startTime = Calendar.getInstance();
        Calendar endTime = Calendar.getInstance();
        Location location = new Location();
        System.out.print("Masukan nama acara : ");
        String eventName = scan.nextLine();
        System.out.print("Lokasi acara : ");
        String eventLocation = scan.nextLine();
        System.out.print("GMT acara (angka): ");
        int eventTimeZone = Integer.parseInt(scan.nextLine());
        location.setLocation(eventLocation, eventTimeZone);
        System.out.println("\nWaktu berangkat\n");
        System.out.print("Tahun : ");
        int departureYear = Integer.parseInt(scan.nextLine());
        System.out.print("Bulan : ");
        int departureMonth = Integer.parseInt(scan.nextLine());
        departureMonth = departureMonth - 1;
        System.out.print("Tanggal : ");
        int departureDay = Integer.parseInt(scan.nextLine());
        System.out.print("Jam : ");
        int departureHour = Integer.parseInt(scan.nextLine());
        System.out.print("Menit : ");
        int departureMinute = Integer.parseInt(scan.nextLine());
        int departureSecond = 0;
        startTime.set(departureYear, departureMonth, departureDay, departureHour, departureMinute, departureSecond);
        System.out.println("\nWaktu tiba\n");
        System.out.print("Tahun : ");
        int arrivalYear = Integer.parseInt(scan.nextLine());
        System.out.print("Bulan : ");
        int arrivalMonth = Integer.parseInt(scan.nextLine());
        arrivalMonth = arrivalMonth - 1;
        System.out.print("Tanggal : ");
        int arrivalDay = Integer.parseInt(scan.nextLine());
        System.out.print("Jam : ");
        int arrivalHour = Integer.parseInt(scan.nextLine());
        System.out.print("Menit : ");
        int arrivalMinute = Integer.parseInt(scan.nextLine());
        int arrivalSecond = 0;
        endTime.set(arrivalYear, arrivalMonth, arrivalDay, arrivalHour, arrivalMinute, arrivalSecond);
        System.out.print("Prioritas(1-5) : ");
        int priority = Integer.parseInt(scan.nextLine());
        System.out.println();
        event.setEvent(eventName, location, startTime, endTime, priority);
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
