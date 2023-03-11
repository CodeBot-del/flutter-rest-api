class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezoneCoordinate timezone;
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({
    required this.name,
    required this.number,
  })
}

class LocationCoordinate {}

class LocationTimezoneCoordinate {}