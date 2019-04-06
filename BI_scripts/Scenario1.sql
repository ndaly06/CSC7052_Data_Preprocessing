/* QUERY THAT ALLOWS THE USER TO CHECK THE PRICE OF ALL AVAILABLE FLIGHTS FROM BELFAST TO MANCHESTER
ON A FRIDAY AND ALL THE AVILABLE FLIGHTS FROM MANCHESTER TO BELFAST ON A SUNDAY */
SELECT departAirports.AirportName, arriveAirports.AirportName, EZY_FlightNumbers.FlightNumber,
EZY_Schedule.Depart, EZY_Schedule.Arrive, EZY_Days.Day, EZY_Schedule.BasePrice, EZY_Calendar.Date

FROM EZY_Routes

INNER JOIN EZY_Airports as departAirports ON EZY_Routes.OriginAirport=departAirports.AirportID

INNER JOIN EZY_Airports as arriveAirports ON EZY_Routes.ArrivalAirport=arriveAirports.AirportID

INNER JOIN EZY_FlightNumbers ON EZY_Routes.RouteID=EZY_FlightNumbers.RouteID

INNER JOIN EZY_Schedule ON EZY_FlightNumbers.FlightNumberID=EZY_Schedule.FlightNumberID

INNER JOIN EZY_Days ON EZY_Schedule.DayID=EZY_Days.DayID

INNER JOIN EZY_Calendar ON EZY_Days.DayID=EZY_Calendar.DayID

WHERE (departAirports.AirportName LIKE 'Belfast%' AND arriveAirports.AirportName LIKE 'Manch%' AND EZY_Days.Day LIKE 'Fri%' AND Date(EZY_Calendar.Date) = '2018-12-07')
OR
(departAirports.AirportName LIKE 'man%' AND arriveAirports.AirportName LIKE 'bel%' AND EZY_Days.Day LIKE 'Sun%' AND Date(EZY_Calendar.Date) = '2018-12-09');


/* QUERY THAT SHOWS THE FLIGHTS IN ORDER OF INCREASING COST*/
SELECT departAirports.AirportName, arriveAirports.AirportName, EZY_FlightNumbers.FlightNumber,
EZY_Schedule.Depart, EZY_Schedule.Arrive, EZY_Days.Day, EZY_Schedule.BasePrice, EZY_Calendar.Date

FROM EZY_Routes

INNER JOIN EZY_Airports as departAirports ON EZY_Routes.OriginAirport=departAirports.AirportID

INNER JOIN EZY_Airports as arriveAirports ON EZY_Routes.ArrivalAirport=arriveAirports.AirportID

INNER JOIN EZY_FlightNumbers ON EZY_Routes.RouteID=EZY_FlightNumbers.RouteID

INNER JOIN EZY_Schedule ON EZY_FlightNumbers.FlightNumberID=EZY_Schedule.FlightNumberID

INNER JOIN EZY_Days ON EZY_Schedule.DayID=EZY_Days.DayID

INNER JOIN EZY_Calendar ON EZY_Days.DayID=EZY_Calendar.DayID

WHERE (departAirports.AirportName LIKE 'Belfast%' AND arriveAirports.AirportName LIKE 'Manch%' AND EZY_Days.Day LIKE 'Fri%' AND Date(EZY_Calendar.Date) = '2018-12-07')
OR
(departAirports.AirportName LIKE 'man%' AND arriveAirports.AirportName LIKE 'bel%' AND EZY_Days.Day LIKE 'Sun%' AND Date(EZY_Calendar.Date) = '2018-12-09')

ORDER BY EZY_Days.Day, EZY_Schedule.BasePrice ASC;


/* */















EZY_Airports.AirportID, EZY_Airports.AirportName, EZY_Airports.AirportCode,
    EZY_Cities.City








/* Returns Belfast International Airport details */
SELECT EZY_Airports.AirportID, EZY_Airports.AirportName, EZY_Airports.AirportCode
FROM EZY_Airports WHERE EZY_Airports.AirportName LIKE '%bel%';


SELECT * FROM EZY_Airports



INNER JOIN EZY_Cities ON EZY_Airports.CityID=EZY_Cities.City_ID;




SELECT EZY_Cities.City_ID, EZY_Countries.CountryID, EZY_Countries.CountryID

FROM EZY_Cities

INNER JOIN EZY_Countries ON EZY_Cities.CountryID=EZY_Countries.CountryID;