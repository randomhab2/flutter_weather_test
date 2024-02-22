import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/features/weather/weather_bloc/weather_bloc.dart';
import 'package:flutter_weather_test/src/mock/locaitions.dart';
import 'package:flutter_weather_test/src/models/location_model.dart';

class LocationDropdown extends StatelessWidget {
  const LocationDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: DropdownButton(
                isExpanded: true,
                icon: null,
                underline: const SizedBox(),
                hint: const Text('Please choose a location'),
                value: state.location,
                onChanged: (newValue) =>
                    _onChangeLocation(context, newValue as LocationModel),
                items: locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location.city),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onChangeLocation(BuildContext context, LocationModel value) {
    context.read<WeatherBloc>().add(
          WeatherEvent.searchByCity(value),
        );
  }
}
