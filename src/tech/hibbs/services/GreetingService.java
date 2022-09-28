package tech.hibbs.services;

public class GreetingService {

    private CustomerService customerService;

    public GreetingService(CustomerService customerService) {
        this.customerService = customerService;
    }

    public String sayHello(int userId)
    {
        return "Hello " + customerService.getNameForUser(userId) + "!";
    }
}
