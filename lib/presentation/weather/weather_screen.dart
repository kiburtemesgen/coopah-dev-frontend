import 'package:coopah_dev_frontend/core/colors.dart';
import 'package:coopah_dev_frontend/core/enum/temperature_unit.dart';
import 'package:coopah_dev_frontend/core/helpers/convertors.dart';
import 'package:coopah_dev_frontend/presentation/weather/weather_bloc/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part './widgets/weather_title_and_description.dart';
part './widgets/weather_icon.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch weather on page start
    _fetchWeather();
  }

  void _fetchWeather() {
    context.read<WeatherBloc>().add(WeatherEvent.getWeather());
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GestureDetector(
          onTap: _fetchWeather,
          child: Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: AppColors.orange,
            ),
            child: const Center(
              child: Text(
                'Refresh',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {
          if (state.error != null && state.error!.message != null) {
            _showSnackBar(state.error!.message!);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.weatherResponse == null ||
              state.weatherResponse!.list.isEmpty) {
            return const Center(child: Text('Error fetching weather data'));
          }

          final result = state.weatherResponse!.list.first;
          final unit = state.unit;
          final temp = result.main?.temp;
          final name = state.weatherResponse?.city?.name;
          String? icon;
          if (result.weather.isNotEmpty) {
            icon = result.weather.first.icon;
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (icon != null)
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffF6F6F6),
                      ),
                      child: Center(
                        child: _WeatherIcon(icon: icon),
                      ),
                    ),
                  const SizedBox(height: 20.0),
                  const Center(
                    child: Text(
                      'THIS IS MY WEATHER APP',
                      style: TextStyle(
                        fontFamily: 'FuturaCondensedExtraBold',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  if (temp != null)
                    _WeatherTitleAndDescription(
                      title: 'Temperature',
                      description:
                          '${(unit == TemperatureUnit.celsius ? kelvinToCelsius(temp) : kelvinToFahrenheit(temp))} degrees',
                    ),
                  if (name != null)
                    _WeatherTitleAndDescription(
                      title: 'Location',
                      description: name,
                    ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Celsius / Fahrenheit',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Switch(
                        value: unit == TemperatureUnit.fahrenheit,
                        onChanged: (val) {
                          context
                              .read<WeatherBloc>()
                              .add(WeatherEvent.switchTemperatureUnit());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
