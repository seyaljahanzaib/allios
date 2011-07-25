//package pl.alios.utils;
//
//public enum PaymentMethod {
//
//    MONDAY("M"), TUESDAY("T"), WEDNESDAY("W"),
//    THURSDAY("R"), FRIDAY("F"), SATURDAY("Sa"), SUNDAY("Su"), ;
//
//    private final String description;
//    // Reverse-lookup map for getting a day from an abbreviation
//    private static final Map<String, Day> lookup = new HashMap<String, Day>();
//    static {
//        for (Day d : Day.values())
//            lookup.put(d.getAbbreviation(), d);
//    }
//
//    private Day(String abbreviation) {
//        this.abbreviation = abbreviation;
//    }
//
//    public String getAbbreviation() {
//        return abbreviation;
//    }
//
//    public static Day get(String abbreviation) {
//        return lookup.get(abbreviation);
//    }
//}
