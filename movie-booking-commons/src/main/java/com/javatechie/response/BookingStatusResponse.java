package com.javatechie.response;

import java.util.List;

public record BookingStatusResponse(
        String bookingId,
        String status,
        String showId,
        List<String> seatIds,
        String userId,
        long amount
) {
}
