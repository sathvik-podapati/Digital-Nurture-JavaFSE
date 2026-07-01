# Spring Learn - REST Country Web Service

## Description

This project demonstrates a simple RESTful Web Service using Spring Boot. The application loads the details of India from a Spring XML configuration file and returns them as a JSON response.

---

## Technologies Used

- Java 17 (or Java 8+)
- Spring Boot
- Spring Web
- Spring Context
- Maven

---

## Project Structure

```
spring-learn
│── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── cognizant
│   │   │           └── springlearn
│   │   │               ├── controller
│   │   │               │     └── CountryController.java
│   │   │               ├── model
│   │   │               │     └── Country.java
│   │   │               └── SpringLearnApplication.java
│   │   └── resources
│   │       ├── application.properties
│   │       └── country.xml
│   └── test
│       └── java
│           └── com
│               └── cognizant
│                   └── springlearn
│                       └── SpringLearnApplicationTests.java
```

---

## Configuration

### application.properties

```
server.port=8083
```

### country.xml

Contains the Country bean.

```xml
<bean id="in" class="com.cognizant.springlearn.model.Country">
    <property name="code" value="IN"/>
    <property name="name" value="India"/>
</bean>
```

---

## REST Endpoint

### Get Country Details

**Method**

```
GET
```

**URL**

```
http://localhost:8083/country
```

---

## Sample Response

```json
{
    "code": "IN",
    "name": "India"
}
```

---

## How to Run

1. Open the project in Eclipse or IntelliJ IDEA.
2. Update the Maven project.
3. Run `SpringLearnApplication.java`.
4. Open a browser or Postman.
5. Visit:

```
http://localhost:8083/country
```

---

## Expected Output

```
{
    "code": "IN",
    "name": "India"
}
```

---

## Console Log

```
INFO  CountryController : START
INFO  CountryController : END
```

---

## HTTP Response

**Status Code**

```
200 OK
```

**Content-Type**

```
application/json
```

---

## Author

Cognizant Spring Learn Hands-on Exercise - executed by Sarah Thomas
