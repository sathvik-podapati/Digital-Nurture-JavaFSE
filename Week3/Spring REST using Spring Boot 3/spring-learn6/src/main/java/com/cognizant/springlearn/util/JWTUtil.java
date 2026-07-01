package com.cognizant.springlearn.util;

import java.security.Key;
import java.util.Date;

import org.springframework.stereotype.Component;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

@Component
public class JwtUtil {

    // Secret key (must be at least 32 characters long)
    private static final String SECRET =
            "mysecretkeymysecretkeymysecretkey12";

    private final Key key = Keys.hmacShaKeyFor(SECRET.getBytes());

    // Generate JWT Token
    public String generateToken(String username) {

        return Jwts.builder()
                .setSubject(username)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 1200000)) // 20 minutes
                .signWith(key, SignatureAlgorithm.HS256)
                .compact();
    }
}
