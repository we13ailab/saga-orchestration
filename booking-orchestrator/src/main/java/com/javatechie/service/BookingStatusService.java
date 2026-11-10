package com.javatechie.service;

import com.javatechie.response.BookingStatusResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestClient;
import org.springframework.web.server.ResponseStatusException;

@Service
@RequiredArgsConstructor
public class BookingStatusService {

    private final RestClient.Builder restClientBuilder;

    @Value("${booking.service.url:http://localhost:9191}")
    private String bookingServiceUrl;

    public BookingStatusResponse getBooking(String bookingId) {
        try {
            return restClientBuilder.baseUrl(bookingServiceUrl)
                    .build()
                    .get()
                    .uri("/bookings/{bookingId}", bookingId)
                    .retrieve()
                    .body(BookingStatusResponse.class);
        } catch (HttpClientErrorException.NotFound exception) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Booking not found", exception);
        }
    }
}
