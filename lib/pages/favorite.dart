import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import './globals.dart' as globals;
import './Rglobals.dart' as Rglobals;
import './recipes.dart';


class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favorite();
}

class _favorite extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FavoriteList(),
    );
  }
}

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  _FavoriteListState createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[

          Visibility(
            visible:globals.isVisible1,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/almondine.jpg", width: 85.0),
                title: Text('Almondine'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible1 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Almondine';
                  Rglobals.Recipe = "Bring a large pot of salted water to a boil. Meanwhile, prep an ice bath by filling a large bowl with ice and water. Cook green beans until crisp-tender, 2 to 3 minutes (you want them to be slightly undercooked as they will continue to cook later). Using a slotted spoon, immediately transfer beans to ice bath. Drain.In large skillet over medium-low heat, melt butter until lightly bubbling. Add almonds and cook, stirring frequently, until golden brown, 3 to 4 minutes. Reduce heat to low and add shallots and garlic. Cook, stirring occasionally, until fragrant, 2 to 3 minutes. Add green beans and toss until combined and beans are tender. Stir in lemon zest and juice, tossing to coat; season with salt and pepper.";
                  Rglobals.Photo = 'assets/almondine.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible2,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/ambrosia salad.jpg", width: 85.0),
                title: Text('Ambrosia Salad'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible2 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Ambrosia Salad';
                  Rglobals.Recipe = "In a large bowl, fold together Cool Whip and sour cream. Add oranges, pineapple, cherries, coconut, pecans, and marshmallows and stir gently.Cover and refrigerate for at least 1 hour and up to overnight. ";
                  Rglobals.Photo = 'assets/ambrosia salad.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible3,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/Meringue.jpg", width: 85.0),
                title: Text('Meringue'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible3 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Meringue';
                  Rglobals.Recipe = "Preheat oven to 200°. Line two sheet pans with parchment paper.In bowl of a stand mixer fitted with a whisk attachment, combine egg whites, cream of tartar, and salt. Beat on medium speed until whites are foamy and soft peaks form, about 1 minute. With mixer running, slowly add sugar 1 tablespoon at a time, then increase speed to high and beat until meringue is thick, marshmallow-like, and holds firm peaks, 4 to 6 minutes. Beat in peppermint extract.Fit a large disposable piping bag with a large tip and fold top back to create a cuff. Using a small paint brush, paint a few thin vertical stripes of red food coloring inside bag. Rest bag in an empty drinking glass to prop it up, then use a rubber spatula to scrape meringue into piping bag. Fold back top of bag and twist top to seal.Pipe 2” cookies on prepared sheet pans, leaving 1” between cookies. Bake until cookies are very crisp and hard to the touch, 1½ to 2 hours. Turn off oven and let cookies sit in oven until completely cool, about 2 hours.Place peppermints in bowl of a mini food processor. Pulse until candy is broken up into fine pieces. (Alternatively, place them in a small ziptop bag and crush with a meat mallet or rolling pin.) Transfer to a small bowl.In a small microwave-safe bowl, microwave chocolate chips in 30-second intervals, stirring between each, until melted and smooth.Working with one cookie at a time, dip bottom of meringue in chocolate and let excess drip off. Sprinkle some crushed peppermints over chocolate and return immediately back to baking sheet. Repeat with remaining cookies, then refrigerate until chocolate is set, 15 to 20 minutes. Store in an airtight container.";
                  Rglobals.Photo = 'assets/Meringue.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible4,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/roasted fennel.jpg", width: 85.0),
                title: Text('Roasted Fennel'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible4 = false),
                ),

                onTap: () {
                  Rglobals.Name = 'Roasted Fennel';
                  Rglobals.Recipe = "Preheat oven to 400º. In a small bowl, combine shallot, vinegar, and 1/2 teaspoon salt. Let sit, stirring occasionally, while vegetables roast.On a large rimmed baking sheet, toss fennel, squash, apple, oil, 1 teaspoon salt, and 1/2 teaspoon pepper with your hands. Transfer some of the fennel mixture to another baking sheet so vegetables are in an even layer.Roast vegetables, rotating pans halfway through, until golden brown and tender, 35 to 45 minutes.Transfer vegetables to a platter. Top with pickled shallots, hazelnuts, pomegranate seeds, and parsley.";
                  Rglobals.Photo = 'assets/roasted fennel.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible5,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/risotto.jpg", width: 85.0),
                title: Text('Risotto'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible5 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Risotto';
                  Rglobals.Recipe =
                  "A classic risotto alla Milanese starts with mashed saffron threads, fried in butter. When the saffron has released some of its flavour, add finely chopped onion. Add the rice and cook until the grains become translucent. Next, a splash of white wine. The heat may be slightly raised, and stir to keep the rice moist and simmering. As soon as the rice grains have absorbed the wine, gradually add tablespoons of chicken stock or beef stock and continue to heat until the rice is cooked. For an authentic risotto, it is vital that the stock is not added all at once. Finally, add butter and Parmesan cheese, allowing it to spread through the rice. Then let it rest for a few minutes, a step called mantecare.";
                  Rglobals.Photo = 'assets/risotto.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible6,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/pasta.jpg", width: 85.0),
                title: Text('Pasta'),
                trailing:IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible6 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Pasta';
                  Rglobals.Recipe =
                  "Cook the pasta for 2 mins less than pack instructions state, in salted boiling water. Meanwhile, melt the butter in a medium frying pan over a low heat, then add the ground black pepper and toast for a few minutes.Drain the pasta, keeping 200ml of the pasta water. Tip the pasta and 100ml of the pasta water into the pan with the butter and pepper. Toss briefly, then scatter over the parmesan evenly, but don’t stir – wait for the cheese to melt for 30 seconds, then once melted, toss everything well, and stir together. This prevents the cheese from clumping or going stringy and makes a smooth, shiny sauce. Add a splash more pasta water if you need to, to loosen the sauce and coat the pasta. Serve immediately with a good grating of black pepper.";
                  Rglobals.Photo = 'assets/pasta.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible7,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/calzone.jpg", width: 85.0),
                title: Text('Calzone'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible7 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Calzone';
                  Rglobals.Recipe =
                  "Preheat oven to 500° and grease two large baking sheets with cooking spray. Divide pizza dough into 4 pieces. On a lightly floured surface, roll one piece of dough out into an 8 circle, about ¼ thick. Spoon pizza sauce in middle of dough, then dot with ricotta and top with pepperoni and mozzarella.Gently fold dough in half, dampen seams with water and pinch together, then crimp edges all around. Repeat with remaining dough. Transfer to prepared baking sheets. Brush tops with oil and sprinkle with salt. Using kitchen scissors or a sharp knife, slit tops in 2 to 3 spots to create steam vents.Bake until tops are golden and filling is bubbling, 20 minutes, brushing with more oil halfway through. Let cool 5 minutes before cutting open.";
                  Rglobals.Photo = 'assets/calzone.jpg';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
          Visibility(
            visible:globals.isVisible8,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: const EdgeInsets.all(4.0),
              color: Color(0xFFE1DEDE),
              child: ListTile(
                selected: true,
                leading: Image.asset("assets/pizza.webp", width: 85.0),
                title: Text('Pizza'),
                trailing: IconButton(
                  icon: Icon( Icons.delete, ),
                  onPressed: () => setState(() => globals.isVisible8 = false),
                ),
                onTap: () {
                  Rglobals.Name = 'Pizza';
                  Rglobals.Recipe =
                  "First, make the dough. Tip the flour into a bowl and add 300ml tepid water. Mix together and set aside at room temperature for 1 hr. Dissolve the yeast in 2 tbsp water and mix this and 15g of salt through the dough. Cover with cling film and leave somewhere warm to double in size for a few hours. For a sourer flavour, leave in the fridge for at least 8 hrs and up to 24 hrs – the longer you leave it the sourer it will be.When the dough is ready, tip it onto a lightly floured surface and divide into four. Roll into balls and leave to rest, covered with a tea towel or cling film for another hour.Now make the tomato sauce. Drain some of the juice from the can and tip the rest into a bowl with the olive oil, oregano and a generous pinch of salt, then either scrunch everything together with your fingers for a chunky sauce or blitz with a stick blender if you want it smooth. Tie the basil stalks together, bruise with the back of a knife and place in the sauce. Leave the sauce at room temperature until needed.To make the pizza, heat a grill to its highest setting and get a heavy frying pan. On a floured surface push and stretch one of the balls of dough out into a circle roughly the same size as the frying pan. Slip the round onto a floured baking sheet and top with a quarter of the sauce, a scattering of cheese, a few basil leaves and a quarter of the mozzarella.Get the pan very hot and carefully slide the pizza onto it. Cook for 2 mins, then put the pan under the grill for another 2 mins until the sides are puffed up and the cheese has melted. Lift onto a board, drizzle with a little olive oil if you like, then cut into wedges and serve while you make the next one.";
                  Rglobals.Photo = 'assets/pizza.webp';
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => recipes()));
                },
              ),
            ),
          ),
        ],
        )
    );
  }
}
