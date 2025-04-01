
part of '../weather_screen.dart';


class _WeatherTitleAndDescription extends StatelessWidget {
  const _WeatherTitleAndDescription(
      { required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
