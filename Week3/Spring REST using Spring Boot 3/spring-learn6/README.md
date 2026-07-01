# JWT Authentication Service

## Project Overview

This project demonstrates how to create a REST Authentication Service using **Spring Boot**, **Spring Security**, and **JSON Web Token (JWT)**.

The service authenticates users using **HTTP Basic Authentication**, generates a JWT upon successful authentication, and returns it in the response. This JWT can then be used to access secured REST APIs.

---

# Technologies Used

* Java
* Spring Boot
* Spring Security
* JWT (JSON Web Token)
* Maven
* REST API

---

# Objectives

* Implement user authentication using Spring Security.
* Read the username and password from the HTTP Authorization header.
* Validate the user credentials.
* Generate a JWT token for authenticated users.
* Return the generated JWT in JSON format.

---

# Project Structure

```text
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
│   │   │               │      AuthenticationController.java
│   │   │               ├── config
│   │   │               │      SecurityConfig.java
│   │   │               ├── service
│   │   │               │      JwtUserDetailsService.java
│   │   │               ├── util
│   │   │               │      JwtUtil.java
│   │   │               ├── model
│   │   │               │      AuthenticationResponse.java
│   │   │               └── filter
│   │   │                      JwtRequestFilter.java
│   │   │
│   │   └── resources
│   │          application.properties
│   │
│   └── test
│
└── pom.xml
```

---

# Features

* HTTP Basic Authentication
* JWT Token Generation
* Spring Security Integration
* Secure REST Endpoint
* JSON Response
* Stateless Authentication

---

# Authentication Flow

1. The client sends a request with a username and password using HTTP Basic Authentication.
2. Spring Security validates the credentials.
3. The Authentication Controller extracts the authenticated user.
4. A JWT token is generated using the user's information.
5. The token is returned in JSON format.
6. The client stores the JWT and uses it to access protected APIs.

---

# API Endpoint

### Authenticate User

**Request**

```http
GET /authenticate
```

Example using cURL:

```bash
curl -s -u user:pwd http://localhost:8090/authenticate
```

---

# Sample Response

```json
{
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwiaWF0IjoxNTcwMzc5NDc0LCJleHAiOjE1NzAzODA2NzR9.t3LRvlCV-hwKfoqZYlaVQqEUiBloWcWn0ft3tgv0dL0"
}
```

---

# Working Flow

* The client sends credentials in the Authorization header.
* Spring Security authenticates the user.
* The controller receives the authenticated user details.
* The JWT Utility generates a signed token.
* The token is returned to the client.
* The client includes the JWT in the Authorization header for future requests.

---

# Main Components

## AuthenticationController

* Handles authentication requests.
* Generates the JWT after successful authentication.
* Returns the token in JSON format.

---

## SecurityConfig

* Configures Spring Security.
* Defines authentication rules.
* Enables HTTP Basic Authentication.
* Protects secured endpoints.

---

## JwtUserDetailsService

* Loads user information.
* Validates user credentials.
* Supplies user details to Spring Security.

---

## JwtUtil

Responsible for:

* Creating JWT tokens
* Signing tokens
* Setting token expiration time
* Extracting username from a token
* Validating tokens

---

## AuthenticationResponse

Represents the response sent to the client.

Example:

```json
{
    "token": "<generated-jwt-token>"
}
```

---

# How to Run

1. Open the project in IntelliJ IDEA, Eclipse, or Spring Tool Suite (STS).
2. Import the project as a Maven project.
3. Allow Maven to download all dependencies.
4. Run `SpringLearnApplication.java`.
5. The application starts on:

```text
http://localhost:8090
```

---

# Testing

Using cURL:

```bash
curl -s -u user:pwd http://localhost:8090/authenticate
```

Using Postman:

* Method: GET
* URL:

```text
http://localhost:8090/authenticate
```

* Authorization Type: Basic Auth
* Username:

```text
user
```

* Password:

```text
pwd
```

Expected Response:

```json
{
  "token": "<generated-jwt-token>"
}
```

---

# Advantages

* Secure authentication using JWT.
* Stateless authentication mechanism.
* Eliminates the need for server-side session storage.
* Easy integration with RESTful APIs.
* Supports scalable and distributed applications.
* Tokens can be reused for accessing protected resources until expiration.

---

# Future Enhancements

* Database-based user authentication.
* User registration API.
* Refresh token implementation.
* Role-based authorization.
* Token revocation and logout.
* Integration with OAuth2 or external identity providers.

---

# Author

**Name:** Sarah Thomas

**Project:** JWT Authentication Service Using Spring Boot
