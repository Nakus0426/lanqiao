package thread_demo.thread_test4;

public class Ticket {
    private String ticketNo;
    private String fromStation;
    private String toStation;
    private String price;

    public Ticket(String ticketNo, String fromStation, String toStation, String price) {
        this.ticketNo = ticketNo;
        this.fromStation = fromStation;
        this.toStation = toStation;
        this.price = price;
    }

    public Ticket() {
    }

    public String getTicketNo() {
        return ticketNo;
    }

    public void setTicketNo(String ticketNo) {
        this.ticketNo = ticketNo;
    }

    public String getFromStation() {
        return fromStation;
    }

    public void setFromStation(String fromStation) {
        this.fromStation = fromStation;
    }

    public String getToStation() {
        return toStation;
    }

    public void setToStation(String toStation) {
        this.toStation = toStation;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "ticketNo='" + ticketNo + '\'' +
                ", fromStation='" + fromStation + '\'' +
                ", toStation='" + toStation + '\'' +
                ", price='" + price + '\'' +
                '}';
    }
}
