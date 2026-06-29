public class Logger {

    private static Logger instance; // creating a single object of Logger

    private Logger() { // this is a private constructor helps as new Logger() cannot be called from
                       // outside the class
        System.out.println("Logger Instance Created");
    }

    public static Logger getInstance() { // this method helps to access the object
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    public void log(String message) { // Logging method
        System.out.println("LOG: " + message);
    }
}