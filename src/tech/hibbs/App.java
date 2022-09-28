package tech.hibbs;

import org.springframework.context.support.ClassPathXmlApplicationContext;

class App {
    public static void main(String[] args) {
        try(ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("config.xml")) {            
            context.getBean(Boot.class).start();
        }
    }
}