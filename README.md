# Spring Sandbox Vanilla

Spring Sandbox Vanilla is a project that loads in Spring and any other Java dependencies manually without using any build or auto-configuration tools such as Maven or Spring Boot.

## Why?

Libraries and frameworks try to make our lives easier by hiding away a lot of the complicated parts and setup. This is usually great because it means that as developers we need to do a lot less work to use these libraries and frameworks. However, when it comes to learning, it can be very confusing to use these libraries because there's a lot of work happening behind the scenes and most of the time it can feel like pure magic.

The aim for this repository is to try and peel back a lot of those layers and reveal some of the magic, so that as you're using these libraries you can have a better understanding of how they work under-the-hood and hopefully have the confidence to use them .

## Is the name accurate?

I initially started this project as a way of learning how to get Spring running without Spring Boot and Maven, however as it expands I can see this repository being useful for a lot of other areas of Java that tend to be hidden away. Because of that, I may rename this repository in the future as it hopefully continues to expand.

## How to use

### Getting the dependencies

Before getting started, you will need to acquire the dependencies required by the project. To do so, you can run the `get_dependencies.sh` file, which will download the dependencies from Maven and store them into the `dependencies/` folder.

Note: I've tried to make this repository work on both Unix/Mac and Windows (running Cygwin), however I've had issues running the `wget` command through cygwin, so you may have to grab them manually or run it through WSL.

### Building and Running

The `build_and_run.sh` file in root of the repository will build and run the project. 

Running the file will:

    - Set up the class path with `.`, `config/` and all of the `.jar` files in the dependencies folder
    - Compile all of the `.java` files inside the `src/` directory and output the .class files into the `bin/` directory
    - Run the application with `java tech.hibbs.App`

If you're looking to understand how to do all of this manually, I'd definitely start by poking around that file.