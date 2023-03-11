class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezone timezone;

  UserLocation({
    required this.city,
    required this.coordinates,
    required this.country,
    required this.postcode,
    required this.state,
    required this.street,
    required this.timezone,
  });

  factory UserLocation.fromMap(Map<String, dynamic> json){
    final coordinates = LocationCoordinate(
        latitude: json['coordinates']['latitude'],
        longitude: json['coordinates']['longitude'],
      );

      final street = LocationStreet(
        name: json['street']['name'],
        number: json['street']['number'],
      );

      final timezone = LocationTimezone(
        description: json['timezone']['description'],
        offset: json['timezone']['offset'],
      );

      return UserLocation(
          city: json['city'],
          country: json['country'],
          postcode: json['postcode']
              .toString(), //some postcodes are int so we need to convert them to string
          state: json['state'],
          coordinates: coordinates,
          street: street,
          timezone: timezone);
  }
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({
    required this.name,
    required this.number,
  });
}

class LocationCoordinate {
  final String latitude;
  final String longitude;

  LocationCoordinate({
    required this.latitude,
    required this.longitude,
  });
}

class LocationTimezone {
  final String offset;
  final String description;

  LocationTimezone({
    required this.offset,
    required this.description,
  });
}
