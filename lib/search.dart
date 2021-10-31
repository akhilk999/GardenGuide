import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gardening_app/regions/mid_atlantic.dart';
import 'package:gardening_app/regions/midwest.dart';
import 'package:gardening_app/regions/pacificCoastal.dart';
import 'package:gardening_app/regions/rockymountains.dart';
import 'package:gardening_app/regions/southern.dart';
import 'package:gardening_app/regions/newengland.dart';
import 'package:gardening_app/regions/southwest.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

late String region ='';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late String search;
  late GoogleMapController mapController;
  bool _initialized = false;
  bool _error = false;
  final LatLng _center = const LatLng(33.011688, -96.773489);
  final textController = TextEditingController();
  int charLength = 0;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  final _formKey = GlobalKey<FormState>();
  _onChanged(String value) {
    region = value;
    setState(() {
      charLength = value.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text(
            "Search",
            style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Container(
              height: 30,
            ),
            Container(
                height: 325,
                width: 350,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition:
                  CameraPosition(target: _center, zoom: 18),
                )),
            Column(children: [
              Container(
                height: 30,
              ),
              Container(
                  width: 200,
                  child: Form(
                    key: _formKey,
                    child: Column(
                        children:[
                          Container(
                            width: 200,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              //controller: textController,
                              //autocorrect: true,
                              decoration:
                              InputDecoration(hintText: 'Enter State here'),
                              onChanged: _onChanged,
                              validator: (value) {
                                if (value == null) {
                                  return 'Please enter your state';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: 200.0,
                            padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                            child: RaisedButton(
                              color: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text("Submit",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                  )),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Louisiana" || region == "Arkansas" || region == "Alabama" ||
                                      region == "Mississippi" || region == "Georgia" || region == "South Carolina" || region == "North Carolina" ||
                                      region == "Tennessee" || region == "Kentucky" || region == "Florida") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => southernRegion()));
                                  }}
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Maine" || region == "New Hampshire" || region == "Vermont" || region == "Massachusetts" ||
                                      region == "Rhode Island" || region == "Connecticut") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/newEnglandRegion"),builder: (context) => newEnglandRegion()));
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "New York" || region == "New Jersey" || region == "Pennsylvania" || region == "Delaware" ||
                                      region == "Maryland" || region == "Virginia" || region == "West Virginia" || region == "Ohio") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => midAtlanticRegion()));
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Illinois" || region == "Indiana" || region == "Iowa" || region == "Kansas" || region == "Wisconsin" ||
                                      region == "Michigan" || region == "Minnesota" || region == "Missouri" || region == "Nebraska") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => midwestRegion()));
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Colorado" || region == "Montana" || region == "New Mexico" || region == "North Dakota" || region == "Oklahoma" ||
                                      region == "South Dakota" || region == "Texas" || region == "Wyoming") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => southwestRegion()));
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "California" || region == "Oregon" || region == "Nevada" || region == "Arizona" || region == "Washington" || region == "Idaho" || region == "Utah") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => rockyMountains()));
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Hawaii" || region == "Alaska") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => pacificCoastalRegion()));
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ]
                    ),
                  ),
              ),
              Container(
                height: 30,
              ),
            ]),
            /*Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25),
                  SizedBox(
                  width: 350,
                  child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      search = value;
                      /*if (value == 'Texas') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(settings: RouteSettings(name: "/DontKnow"),builder: (context) => DontKnow()));
                      }*/
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                ],
              ),
            ),*/
          ]
        ),
      ),
    );
  }
}