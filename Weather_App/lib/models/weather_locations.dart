class WeatherLocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String averagetemperature;
  final String weatherType;
  final String iconUrl;
  final int aqi;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temperature,
    required this.averagetemperature,
    required this.weatherType,
    required this.iconUrl,
    required this.aqi,
    required this.wind,
    required this.rain,
    required this.humidity,
  }
  );
}  //WeatherLocation

final locationList = [
  WeatherLocation(
    city: 'Kolkata',
    dateTime: 'Today - 11:00 AM',
    temperature: '24\u2103',
    averagetemperature: ('30\u2103''/''20\u2103'),
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    aqi: 312,
    wind: 5,
    rain: 12,
    humidity: 59,
  ),
  WeatherLocation(
    city: 'London',
    dateTime: 'Today - 11:00 AM',
    temperature: '9\u2103',
    averagetemperature: ('19\u2103''/''2\u2103'),
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    aqi: 51,
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'New York',
    dateTime: 'Today - 11:00 AM',
    temperature: '-2\u2103',
    averagetemperature: ('1\u2103''/''-5\u2103'),
    weatherType: 'Snowy',
    iconUrl: 'assets/snow.svg',
    aqi: 27,
    wind: 21,
    rain: 39,
    humidity: 40,
  ),
  WeatherLocation(
    city: 'Sydney',
    dateTime: 'Today - 11:00 AM',
    temperature: '18\u2103',
    averagetemperature: ('23\u2103''/''10\u2103'),
    weatherType: 'Rainy',
    iconUrl: 'assets/rain.svg',
    aqi: 19,
    wind: 20,
    rain: 96,
    humidity: 91,
  ),
  WeatherLocation(
    city: 'Hawaiian Acres',
    dateTime: 'Today - 11:00 AM ',
    temperature: '13\u2103',
    averagetemperature: ('24\u2103''/''10\u2103'),
    weatherType: 'Windy',
    iconUrl: 'assets/wind.svg',
    aqi: 15,
    wind: 30,
    rain: 10,
    humidity: 30 ,
  ),
  WeatherLocation(
    city: 'San Francisco',
    dateTime: 'Today - 11:00 AM',
    temperature: '6\u2103',
    averagetemperature: ('16\u2103''/''4\u2103'),
    weatherType: 'Foggy',
    iconUrl: 'assets/fog.svg',
    aqi: 42,
    wind: 12,
    rain: 2,
    humidity: 72,
  ),
  WeatherLocation(
    city: 'Mumbai',
    dateTime: 'Today - 11:00 AM',
    temperature: '12\u2103',
    averagetemperature: ('22\u2103''/''10\u2103'),
    weatherType: 'Thunderstorm',
    iconUrl: 'assets/thunderstorm.svg',
    aqi: 189,
    wind: 25,
    rain: 92,
    humidity: 10,
  ),
];