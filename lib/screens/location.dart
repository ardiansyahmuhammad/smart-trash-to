// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class PickupMaps extends StatefulWidget {
  const PickupMaps({Key? key}) : super(key: key);

  @override
  State<PickupMaps> createState() => _PickupMapsState();
}

class _PickupMapsState extends State<PickupMaps> {
  // Key dummy untuk Google Maps API
  static const String API_KEY = "AIzaSyD_01X23456789012345678";

  // MapController untuk mengendalikan map
  late GoogleMapController mapController;

  // Lokasi awal map
  static const LatLng _initialPosition = LatLng(-6.918963, 107.617028);

  // Search bar
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Map API'),
      ),
      body: Stack(
        children: [
          // Map
          GoogleMap(
            mapType: MapType.normal,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 11.0,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
          ),

          // Search bar
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Cari lokasi',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                // Mencari lokasi berdasarkan input search bar
                _searchLocation(value);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Kembali ke posisi awal map
          mapController.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: _initialPosition,
                zoom: 11.0,
              ),
            ),
          );
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }

  // Mencari lokasi berdasarkan input search bar
  void _searchLocation(String value) async {
    if (value.isEmpty) {
      return;
    }

    // Mendapatkan hasil pencarian dari Google Maps API
    final response = await GeocodingService.search(value);

    if (response.results.isNotEmpty) {
      // Mengatur posisi map ke lokasi hasil pencarian
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              response.results[0].geometry.location.lat,
              response.results[0].geometry.location.lng,
            ),
            zoom: 15.0,
          ),
        ),
      );
    }
  }
}

// Service untuk mencari lokasi
class GeocodingService {
  static Future<GeocodingResponse> search(String query) async {
    // URL untuk mencari lokasi
    final String _url =
        "https://maps.googleapis.com/maps/api/geocode/json?address=$query&key=${_PickupMapsState.API_KEY}";

    // Mengambil response dari Google Maps API
    final response = await http.get(Uri.parse(_url));

    // Mengembalikan response
    return GeocodingResponse.fromJson(json.decode(response.body));
  }
}

// Model untuk menyimpan hasil geocoding
class GeocodingResponse {
  final List<GeocodingResult> results;

  GeocodingResponse({required this.results});

  factory GeocodingResponse.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;
    List<GeocodingResult> resultList =
        list.map((i) => GeocodingResult.fromJson(i)).toList();

    return GeocodingResponse(results: resultList);
  }
}

class GeocodingResult {
  final Geometry geometry;

  GeocodingResult({required this.geometry});

  factory GeocodingResult.fromJson(Map<String, dynamic> json) {
    return GeocodingResult(geometry: Geometry.fromJson(json['geometry']));
  }
}

class Geometry {
  final Location location;

  Geometry({required this.location});

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(location: Location.fromJson(json['location']));
  }
}

class Location {
  final double lat;
  final double lng;

  Location({required this.lat, required this.lng});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(lat: json['lat'], lng: json['lng']);
  }
}
