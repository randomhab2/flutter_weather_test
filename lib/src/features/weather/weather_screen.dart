import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/enums/loading_state.dart';
import 'package:flutter_weather_test/src/features/weather/weather_bloc/weather_bloc.dart';
import 'package:flutter_weather_test/src/features/weather/widgets/location_dropdown.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: _listener,
        listenWhen: _listenWhen,
        builder: (context, state) {
          return Column(
            children: [
              const LocationDropdown(),
              state.loadingState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Text(state.location?.city ?? ''),
                        if (state.weather != null) ...[
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 16,
                            ),
                            child: Row(
                              children: [
                                const Text(
                                  'Temperature: ',
                                ),
                                Text(
                                  state.weather?.mainTemp?.temp.toString() ??
                                      '',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 16,
                            ),
                            child: Row(
                              children: [
                                const Text(
                                  'Feels like: ',
                                ),
                                Text(
                                  state.weather?.mainTemp?.feelsLike
                                          .toString() ??
                                      '',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
            ],
          );
        },
      ),
    );
  }

  bool _listenWhen(
    WeatherState prev,
    WeatherState curr,
  ) =>
      prev.error != curr.error && curr.error.isNotEmpty;

  void _listener(
    BuildContext context,
    WeatherState state,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(state.error),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
