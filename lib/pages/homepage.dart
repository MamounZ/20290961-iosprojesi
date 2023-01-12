import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        body: ListView(
          children: <Widget>[


            Container(
                width: double.infinity,
                height: 800,
                decoration: BoxDecoration(
                  color: Color(0xFFE1DEDE),
                  shape: BoxShape.rectangle,
                ),
                child: ListView(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/a.png',
                        ),
                      ),


                      Container(
                        padding: const EdgeInsets.all(12),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation:10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {Navigator.pushNamed(context, '/western');},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('assets/westernfood.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width:50),
                                  Text('Western Food')
                                ],
                              )

                          ),

                        ),
                      ),


                      Container(
                        padding: const EdgeInsets.all(12),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation:10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {Navigator.pushNamed(context, '/asian');},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('assets/aisanfood.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width:50),
                                  Text('Asian Food')
                                ],
                              )

                          ),

                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation:10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {Navigator.pushNamed(context, '/middleeastern');},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('assets/middleeasternfood.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width:40),
                                  Text('Middle Eastern Food')
                                ],
                              )

                          ),

                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation:10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {Navigator.pushNamed(context, '/african');},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('assets/africanfood.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width:50),
                                  Text('African Food')
                                ],
                              )

                          ),

                        ),
                      ),


                    ]
                )
            ),
          ],
        )
    );
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );
  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );
  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: (){ Navigator.pushNamed(context, '/HomePage');},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('Favorite'),
        onTap: (){Navigator.pushNamed(context, '/favorite');},
      ),
      ListTile(
        leading: const Icon(Icons.web),
        title: const Text('Visit Website'),
        onTap: () async => {await launch ( "https://www.youtube.com/shorts/Dk_j0f-HhaI") },
      ),
    ],
  );
}
