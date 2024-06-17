// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class DonorDetails extends StatefulWidget {
//   const DonorDetails({super.key});
//   @override
//   // ignore: library_private_types_in_public_api
//   _DonorDetailsState createState() => _DonorDetailsState();
// }

// class _DonorDetailsState extends State<DonorDetails> {
//   late GoogleMapController _controller;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: GoogleMap(
//               onMapCreated: (GoogleMapController controller) {
//                 _controller = controller;
//               },
//               initialCameraPosition: const CameraPosition(
//                 target: LatLng(0, 0), // Replace with your initial location
//                 zoom: 10,
//               ),
//               markers: <Marker>{
//                 const Marker(
//                   markerId: MarkerId('marker_1'),
//                   position: LatLng(2, 5), // Replace with your marker location
//                 ),
//                 // Add more markers here
//               },
//             ),
//           ),
//           const ListTile(
//             leading: Icon(Icons.local_cafe),
//             title: Text('خطوات البحث'),
//           ),
//           ButtonBar(
//             alignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton.icon(
//                 onPressed: () {},
//                 icon: const Icon(Icons.group),
//                 label: const Text('المشتركين'),
//               ),
//               ElevatedButton.icon(
//                 onPressed: () {},
//                 icon: const Icon(Icons.place),
//                 label: const Text('المواقع'),
//               ),
//               ElevatedButton.icon(
//                 onPressed: () {},
//                 icon: const Icon(Icons.filter_list),
//                 label: const Text('التصفية'),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                   ),
//                   child: const Text('5km'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                   ),
//                   child: const Text('الأسطورة'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
