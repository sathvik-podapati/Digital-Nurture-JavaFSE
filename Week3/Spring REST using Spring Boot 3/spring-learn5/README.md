# REST API - Get Country Based on Country Code

## Project Overview

This is a Spring Boot REST API that returns country details based on the country code provided in the URL. The country code comparison is **case-insensitive**, and the country data is loaded from an XML file (`country.xml`).

---

# Technologies Used

* Java
* Spring Boot
* Spring Web
* Maven
* JAXB (XML Parsing)
* REST API

---

# Project Structure

```
spring-learn
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── cognizant
│   │   │           └── springlearn
│   │   │               ├── SpringLearnApplication.java
│   │   │               ├── controller
│   │   │               │      CountryController.java
│   │   │               ├── service
│   │   │               │      CountryService.java
│   │   │               ├── model
│   │   │               │      Country.java
│   │   │               │      CountryList.java
│   │   │               └── util
│   │   │                      CountryUtil.java
│   │   │
│   │   └── resources
│   │          country.xml
│   │
│   └── test
│
└── pom.xml
```

---

# Features

* REST API using Spring Boot
* Reads country data from an XML file
* Case-insensitive country code search
* Returns JSON response
* Uses layered architecture (Controller, Service, Model, Utility)

---

# API Endpoint

### Get Country by Country Code

**Request**

```
GET /countries/{code}
```

Example:

```
http://localhost:8083/countries/in
```

or

```
http://localhost:8083/countries/IN
```

or

```
http://localhost:8083/countries/In
```

All of the above return the same result.

---

# Sample Response

```json
{
  "code": "IN",
  "name": "India"
}
```

---

# Working Flow

1. Client sends a GET request with the country code.
2. The request is received by `CountryController`.
3. The controller calls `CountryService`.
4. The service reads all countries from `country.xml`.
5. The service searches the list using a case-insensitive comparison (`equalsIgnoreCase()`).
6. The matching country is returned as a JSON response.

---

# Main Components

## CountryController

* Handles REST requests.
* URL Mapping:

```
GET /countries/{code}
```

* Calls the service layer.

---

## CountryService

* Reads data from the XML file.
* Searches the country list.
* Returns the matching country object.

---

## CountryUtil

* Loads and parses `country.xml`.
* Uses JAXB for XML unmarshalling.

---

## Model Classes

### Country

Represents a country with:

* code
* name

### CountryList

Stores the list of Country objects loaded from XML.

---

# XML Data

The application stores country information inside:

```
src/main/resources/country.xml
```

Example:

```xml
<countries>
    <country>
        <code>IN</code>
        <name>India</name>
    </country>

    <country>
        <code>US</code>
        <name>United States</name>
    </country>
</countries>
```

---

# How to Run

1. Open the project in IntelliJ IDEA, Eclipse, or Spring Tool Suite (STS).
2. Import the project as a Maven project.
3. Wait for Maven dependencies to download.
4. Run `SpringLearnApplication.java`.
5. The server starts on:

```
http://localhost:8083
```

---

# Testing

Open a browser or Postman and send:

```
GET http://localhost:8083/countries/in
```

Expected Output:

```json
{
  "code": "IN",
  "name": "India"
}
```

---

# Advantages

* Simple REST API implementation
* Layered architecture
* XML-based data storage
* Easy to extend with additional countries
* Case-insensitive country lookup
* Easy to test using Postman or a browser

---

# Author

**Name:** Sarah Thomas

**Course:** Certification in Advanced Software Engineering & AI Foundation

**Project:** REST API – Get Country Based on Country Code
