package tech.hibbs;

import tech.hibbs.services.GreetingService;

public class Boot {

    private GreetingService greetingService;

    public Boot(GreetingService greetingService) {
        this.greetingService = greetingService;
    }

    public void start() {
        System.out.println(greetingService.sayHello(1));
    }

}
