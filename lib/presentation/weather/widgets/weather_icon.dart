part of '../weather_screen.dart';

/// A StatelessWidget that displays a weather icon
class _WeatherIcon extends StatelessWidget {
  const _WeatherIcon({required this.icon});

  /// The [icon] parameter is required and specifies the icon code
  /// provided by OpenWeatherMap (e.g., "01d", "10n").
  final String icon;

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://openweathermap.org/img/wn/$icon.png';
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 300) {
          // Under 300px wide: 4:3 aspect ratio
          return AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          );
        } else {
          // 300px wide or more: 16:9 aspect ratio
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          );
        }
      },
    );
  }
}
