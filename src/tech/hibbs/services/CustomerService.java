package tech.hibbs.services;

public class CustomerService {
    public String getNameForUser(int userId)
    {
        if (userId == 1)
        {
            return "Michael";
        }
        else if (userId == 2)
        {
            return "Kirstie";
        }

        return "Unknown";
    }
}
