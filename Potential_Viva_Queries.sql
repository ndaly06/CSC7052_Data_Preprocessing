/* Query that shows all London airports in which EasyJet operates */
SELECT
EZY_Airports.AirportName, EZY_Airports.AirportCode, EZY_Countries.Country

FROM EZY_Airports
INNER JOIN EZY_Cities ON EZY_Airports.CityID=EZY_Cities.City_ID
INNER JOIN EZY_Countries ON EZY_Cities.CountryID=EZY_Countries.CountryID
WHERE EZY_Airports.AirportName LIKE 'Lon%';

/* */
SELECT * from EZY_Routes
INNER JOIN EZY_Airports ON EZY_Routes.OriginAirport=EZY_Airports.AirportID AND EZY_Routes.ArrivalAirport=EZY_Airports.AirportID;


/* */
/* */
SELECT
EZY_Airports.AirportName, EZY_Airports.AirportCode, EZY_Countries.Country, EZY_Airports.AirportID,
EZY_Routes.ArrivalAirport

FROM EZY_Airports

INNER JOIN EZY_Cities ON EZY_Airports.CityID=EZY_Cities.City_ID
INNER JOIN EZY_Countries ON EZY_Cities.CountryID=EZY_Countries.CountryID

INNER JOIN EZY_Routes ON EZY_Airports.AirportID=EZY_Routes.OriginAirport

WHERE EZY_Airports.AirportName LIKE 'Bel%' AND EZY_Routes.ArrivalAirport= 26;
;