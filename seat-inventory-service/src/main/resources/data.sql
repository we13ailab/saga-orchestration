INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_101', 'A1', 'SCREEN_1', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_101' AND seatNumber = 'A1');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_101', 'A2', 'SCREEN_1', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_101' AND seatNumber = 'A2');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_101', 'A3', 'SCREEN_1', 'LOCKED', 'BOOK_20251104_001', NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_101' AND seatNumber = 'A3');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_101', 'A4', 'SCREEN_1', 'RESERVED', 'BOOK_20251104_002', NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_101' AND seatNumber = 'A4');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_101', 'A5', 'SCREEN_1', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_101' AND seatNumber = 'A5');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_202', 'B1', 'SCREEN_2', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_202' AND seatNumber = 'B1');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_202', 'B2', 'SCREEN_2', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_202' AND seatNumber = 'B2');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_202', 'B3', 'SCREEN_2', 'LOCKED', 'BOOK_20251104_003', NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_202' AND seatNumber = 'B3');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_202', 'B4', 'SCREEN_2', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_202' AND seatNumber = 'B4');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_001', 'SHOW_202', 'B5', 'SCREEN_2', 'RESERVED', 'BOOK_20251104_004', NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_202' AND seatNumber = 'B5');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_002', 'SHOW_303', 'C1', 'SCREEN_3', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_303' AND seatNumber = 'C1');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_002', 'SHOW_303', 'C2', 'SCREEN_3', 'LOCKED', 'BOOK_20251104_005', NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_303' AND seatNumber = 'C2');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_002', 'SHOW_303', 'C3', 'SCREEN_3', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_303' AND seatNumber = 'C3');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_002', 'SHOW_303', 'C4', 'SCREEN_3', 'RESERVED', 'BOOK_20251104_006', NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_303' AND seatNumber = 'C4');

INSERT INTO seat_inventory (theaterId, showId, seatNumber, screenId, status, currentBookingId, lastUpdated)
SELECT 'THEATER_PVR_002', 'SHOW_303', 'C5', 'SCREEN_3', 'AVAILABLE', NULL, NOW()
WHERE NOT EXISTS (SELECT 1 FROM seat_inventory WHERE showId = 'SHOW_303' AND seatNumber = 'C5');
