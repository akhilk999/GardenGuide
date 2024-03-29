import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gardenguide/regions/mid_atlantic.dart';
import 'package:gardenguide/regions/midwest.dart';
import 'package:gardenguide/regions/pacificCoastal.dart';
import 'package:gardenguide/regions/rockymountains.dart';
import 'package:gardenguide/regions/southern.dart';
import 'package:gardenguide/regions/newengland.dart';
import 'package:gardenguide/regions/southwest.dart';
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
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.green[700]),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                                )
                              ),
                              child: Text("Submit",
                                  style: TextStyle(color: Colors.grey[200])
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Louisiana" || region == "Arkansas" || region == "Alabama" ||
                                      region == "Mississippi" || region == "Georgia" || region == "South Carolina" || region == "North Carolina" ||
                                      region == "Tennessee" || region == "Kentucky" || region == "Florida") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => southernRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/lobelia-cardinalis-flowers-picture-id1277201249?k=20&m=1277201249&s=612x612&w=0&h=92KgIjJMpCnZwWvXmFJor0q-gevIK-d_mv6mNeVc5ss=', scale: 12,);
                                  }}
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Maine" || region == "New Hampshire" || region == "Vermont" || region == "Massachusetts" ||
                                      region == "Rhode Island" || region == "Connecticut") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/newEnglandRegion"),builder: (context) => newEnglandRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/silverspotted-skipper-feeding-on-new-england-aster-in-late-summers-picture-id1338957998?k=20&m=1338957998&s=612x612&w=0&h=x9ZCQv_pSnPqhWRiVUMUdafPwC9mot9Jf8bUb80tnbo=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "New York" || region == "New Jersey" || region == "Pennsylvania" || region == "Delaware" ||
                                      region == "Maryland" || region == "Virginia" || region == "West Virginia" || region == "Ohio") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => midAtlanticRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/foxglove-beardtongue-picture-id1324897251?k=20&m=1324897251&s=612x612&w=0&h=bl8Ldffl4_QuPZ4akK8ZoPaloUp4BHWMcY7Uxfm_5do=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Illinois" || region == "Indiana" || region == "Iowa" || region == "Kansas" || region == "Wisconsin" ||
                                      region == "Michigan" || region == "Minnesota" || region == "Missouri" || region == "Nebraska") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => midwestRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/flying-hummingbird-picture-id1331312490?b=1&k=20&m=1331312490&s=170667a&w=0&h=VajxZpvX2sj3qNDSrIQM3oxpPFwrtKIjtxxH0Fc8hAI=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Colorado" || region == "Montana" || region == "New Mexico" || region == "North Dakota" || region == "Oklahoma" ||
                                      region == "South Dakota" || region == "Texas" || region == "Wyoming") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => southwestRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/plains-blackfoot-picture-id480154168?k=20&m=480154168&s=612x612&w=0&h=bSOUJqmTwFwxOeuKzZyHyHy86_YAaEVAa_A88UFjbgw=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "California" || region == "Oregon" || region == "Nevada" || region == "Arizona" || region == "Washington" || region == "Idaho" || region == "Utah") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => rockyMountains()));
                                    Image.asset('https://media.istockphoto.com/photos/shrub-of-potentilla-fruticosa-sommerflor-shrubby-cinquefoil-yellow-picture-id1293902515?b=1&k=20&m=1293902515&s=170667a&w=0&h=Zvx6pdVH1mq1phmrw9KK9ChKua-7R07Z8jTa8IChkNc=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Hawaii" || region == "Alaska") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => pacificCoastalRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/close-up-of-california-poppies-during-peak-blooming-time-antelope-picture-id1092780354?k=20&m=1092780354&s=612x612&w=0&h=Mj8BN2rnyohzTKL9fYQ2ae12JZ9TbPyMn8Jjtyi-6vE=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  return null;
                                }
                              },
                            ),
                            /*
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
                                        Image.asset('https://media.istockphoto.com/photos/lobelia-cardinalis-flowers-picture-id1277201249?k=20&m=1277201249&s=612x612&w=0&h=92KgIjJMpCnZwWvXmFJor0q-gevIK-d_mv6mNeVc5ss=', scale: 12,);
                                  }}
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Maine" || region == "New Hampshire" || region == "Vermont" || region == "Massachusetts" ||
                                      region == "Rhode Island" || region == "Connecticut") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/newEnglandRegion"),builder: (context) => newEnglandRegion()));
                                        Image.asset('https://media.istockphoto.com/photos/silverspotted-skipper-feeding-on-new-england-aster-in-late-summers-picture-id1338957998?k=20&m=1338957998&s=612x612&w=0&h=x9ZCQv_pSnPqhWRiVUMUdafPwC9mot9Jf8bUb80tnbo=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "New York" || region == "New Jersey" || region == "Pennsylvania" || region == "Delaware" ||
                                      region == "Maryland" || region == "Virginia" || region == "West Virginia" || region == "Ohio") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => midAtlanticRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/foxglove-beardtongue-picture-id1324897251?k=20&m=1324897251&s=612x612&w=0&h=bl8Ldffl4_QuPZ4akK8ZoPaloUp4BHWMcY7Uxfm_5do=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Illinois" || region == "Indiana" || region == "Iowa" || region == "Kansas" || region == "Wisconsin" ||
                                      region == "Michigan" || region == "Minnesota" || region == "Missouri" || region == "Nebraska") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => midwestRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/flying-hummingbird-picture-id1331312490?b=1&k=20&m=1331312490&s=170667a&w=0&h=VajxZpvX2sj3qNDSrIQM3oxpPFwrtKIjtxxH0Fc8hAI=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Colorado" || region == "Montana" || region == "New Mexico" || region == "North Dakota" || region == "Oklahoma" ||
                                      region == "South Dakota" || region == "Texas" || region == "Wyoming") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => southwestRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/plains-blackfoot-picture-id480154168?k=20&m=480154168&s=612x612&w=0&h=bSOUJqmTwFwxOeuKzZyHyHy86_YAaEVAa_A88UFjbgw=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "California" || region == "Oregon" || region == "Nevada" || region == "Arizona" || region == "Washington" || region == "Idaho" || region == "Utah") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => rockyMountains()));
                                    Image.asset('https://media.istockphoto.com/photos/shrub-of-potentilla-fruticosa-sommerflor-shrubby-cinquefoil-yellow-picture-id1293902515?b=1&k=20&m=1293902515&s=170667a&w=0&h=Zvx6pdVH1mq1phmrw9KK9ChKua-7R07Z8jTa8IChkNc=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (region == "Hawaii" || region == "Alaska") {
                                    Navigator.push(
                                        context, MaterialPageRoute(settings: RouteSettings(name: "/southernRegion"),builder: (context) => pacificCoastalRegion()));
                                    Image.asset('https://media.istockphoto.com/photos/close-up-of-california-poppies-during-peak-blooming-time-antelope-picture-id1092780354?k=20&m=1092780354&s=612x612&w=0&h=Mj8BN2rnyohzTKL9fYQ2ae12JZ9TbPyMn8Jjtyi-6vE=', scale: 12,);
                                  }
                                }
                                if (_formKey.currentState!.validate()) {
                                  return null;
                                }
                              },
                            ), */
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