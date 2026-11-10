package com.javatechie.controller;

import com.javatechie.entity.Booking;
import com.javatechie.repository.BookingRepository;
import com.javatechie.response.BookingStatusResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bookings")
@RequiredArgsConstructor
public class BookingStatusController {

    private final BookingRepository bookingRepository;

    @GetMapping("/{bookingId}")
    public ResponseEntity<BookingStatusResponse> getBooking(@PathVariable String bookingId) {
        Booking booking = bookingRepository.findByBookingCode(bookingId);
        if (booking == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(new BookingStatusResponse(
                booking.getBookingCode(),
                booking.getStatus(),
                booking.getShowId(),
                booking.getSeatIds(),
                booking.getUserId(),
                booking.getAmount()
        ));
    }
}
