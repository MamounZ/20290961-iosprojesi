import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './Rglobals.dart' as Rglobals;

class african extends StatefulWidget {
  const african({Key? key}) : super(key: key);

  @override
  State<african> createState() => _african();
}

class _african extends State<african> {
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
                child: ListView(children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/a.png',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 40.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: 160.0,
                            child: ElevatedButton(
                              child: const Text('Italian'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/western');
                              },
                            )),
                        Container(
                            width: 160.0,
                            child: ElevatedButton(
                              child: const Text('French'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/french');
                              },
                            )),
                        Container(
                            width: 160.0,
                            child: ElevatedButton(
                              child: const Text('Spanish'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/western');
                              },
                            )),
                        Container(
                            width: 160.0,
                            child: ElevatedButton(
                              child: const Text('Greek'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/western');
                              },
                            )),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Rglobals.Name = 'Risotto';
                            Rglobals.Recipe =
                            "A classic risotto alla Milanese starts with mashed saffron threads, fried in butter. When the saffron has released some of its flavour, add finely chopped onion. Add the rice and cook until the grains become translucent. Next, a splash of white wine. The heat may be slightly raised, and stir to keep the rice moist and simmering. As soon as the rice grains have absorbed the wine, gradually add tablespoons of chicken stock or beef stock and continue to heat until the rice is cooked. For an authentic risotto, it is vital that the stock is not added all at once. Finally, add butter and Parmesan cheese, allowing it to spread through the rice. Then let it rest for a few minutes, a step called mantecare.";
                            Rglobals.Photo = 'assets/risotto.jpg';
                            Navigator.pushNamed(context, '/recipes');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('assets/risotto.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('Risotto')
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Rglobals.Name = 'Pasta';
                            Rglobals.Recipe =
                            "Cook the pasta for 2 mins less than pack instructions state, in salted boiling water. Meanwhile, melt the butter in a medium frying pan over a low heat, then add the ground black pepper and toast for a few minutes.Drain the pasta, keeping 200ml of the pasta water. Tip the pasta and 100ml of the pasta water into the pan with the butter and pepper. Toss briefly, then scatter over the parmesan evenly, but don’t stir – wait for the cheese to melt for 30 seconds, then once melted, toss everything well, and stir together. This prevents the cheese from clumping or going stringy and makes a smooth, shiny sauce. Add a splash more pasta water if you need to, to loosen the sauce and coat the pasta. Serve immediately with a good grating of black pepper.";
                            Rglobals.Photo = 'assets/pasta.jpg';
                            Navigator.pushNamed(context, '/recipes');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('assets/pasta.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('Pasta')
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Rglobals.Name = 'Calzone';
                            Rglobals.Recipe =
                            "Preheat oven to 500° and grease two large baking sheets with cooking spray. Divide pizza dough into 4 pieces. On a lightly floured surface, roll one piece of dough out into an 8 circle, about ¼ thick. Spoon pizza sauce in middle of dough, then dot with ricotta and top with pepperoni and mozzarella.Gently fold dough in half, dampen seams with water and pinch together, then crimp edges all around. Repeat with remaining dough. Transfer to prepared baking sheets. Brush tops with oil and sprinkle with salt. Using kitchen scissors or a sharp knife, slit tops in 2 to 3 spots to create steam vents.Bake until tops are golden and filling is bubbling, 20 minutes, brushing with more oil halfway through. Let cool 5 minutes before cutting open.";
                            Rglobals.Photo = 'assets/calzone.jpg';
                            Navigator.pushNamed(context, '/recipes');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('assets/calzone.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('Calzone')
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Rglobals.Name = 'Pizza';
                            Rglobals.Recipe =
                            "First, make the dough. Tip the flour into a bowl and add 300ml tepid water. Mix together and set aside at room temperature for 1 hr. Dissolve the yeast in 2 tbsp water and mix this and 15g of salt through the dough. Cover with cling film and leave somewhere warm to double in size for a few hours. For a sourer flavour, leave in the fridge for at least 8 hrs and up to 24 hrs – the longer you leave it the sourer it will be.When the dough is ready, tip it onto a lightly floured surface and divide into four. Roll into balls and leave to rest, covered with a tea towel or cling film for another hour.Now make the tomato sauce. Drain some of the juice from the can and tip the rest into a bowl with the olive oil, oregano and a generous pinch of salt, then either scrunch everything together with your fingers for a chunky sauce or blitz with a stick blender if you want it smooth. Tie the basil stalks together, bruise with the back of a knife and place in the sauce. Leave the sauce at room temperature until needed.To make the pizza, heat a grill to its highest setting and get a heavy frying pan. On a floured surface push and stretch one of the balls of dough out into a circle roughly the same size as the frying pan. Slip the round onto a floured baking sheet and top with a quarter of the sauce, a scattering of cheese, a few basil leaves and a quarter of the mozzarella.Get the pan very hot and carefully slide the pizza onto it. Cook for 2 mins, then put the pan under the grill for another 2 mins until the sides are puffed up and the cheese has melted. Lift onto a board, drizzle with a little olive oil if you like, then cut into wedges and serve while you make the next one.";
                            Rglobals.Photo = 'assets/pizza.webp';
                            Navigator.pushNamed(context, '/recipes');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('assets/pizza.webp'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('Pizza')
                            ],
                          )),
                    ),
                  ),
                ])),
          ],
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

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
        onTap: () {
          Navigator.pushNamed(context, '/HomePage');
        },
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('Favorite'),
        onTap: () {
          Navigator.pushNamed(context, '/favorite');
        },
      ),
      ListTile(
        leading: const Icon(Icons.web),
        title: const Text('Visit Website'),
        onTap: () async =>
        {await launch("https://www.youtube.com/shorts/Dk_j0f-HhaI")},
      ),
    ],
  );
}
