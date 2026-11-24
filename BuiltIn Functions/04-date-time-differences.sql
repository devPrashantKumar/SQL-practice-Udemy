SELECT last_checkout - last_checkin
FROM memberships;

SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
FROM memberships;

SELECT
    TIMESTAMPDIFF(SECOND, last_checkin, last_checkout) AS seconds,
    TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) AS minutes,
    TIMESTAMPDIFF(HOUR, last_checkin, last_checkout) AS hours,
    TIMESTAMPDIFF(DAY, last_checkin, last_checkout) AS days
FROM memberships;



-- output in days
SELECT DATEDIFF(membership_end, membership_start)
FROM memberships; 

SELECT DATEDIFF(NOW(), membership_start)
FROM memberships;