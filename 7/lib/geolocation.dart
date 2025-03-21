import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Future<Position?>? positionFuture;

  @override
  void initState() {
    super.initState();
    positionFuture = getPosition();
  }

  Future<Position?> getPosition() async {
    try {
      await Geolocator.requestPermission();
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Current Location - Edawg")),
      body: Center(
        child: FutureBuilder<Position?>(
          future: positionFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Something terrible happened!');
              }
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Latitude: ${snapshot.data!.latitude}'),
                    Text('Longitude: ${snapshot.data!.longitude}'),
                  ],
                );
              }
            }
            return const Text('Unable to get location');
          },
        ),
      ),
    );
  }
}
