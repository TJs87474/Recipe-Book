import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      "name": "Lemon Posset",
      "image": "assets/images/Lemons.jpg",
      "ingredients": "600 ml heavy whipping cream\n200 g sugar\n2 tbsp lemon zest\n75 ml lemon juice\n1 tsp vanilla extract",
      "instructions": "1. Place the cream, sugar, and lemon zest in a saucepan. Heat over medium-high heat. "
          "\n2. Stir in the sugar to be dissolved in the cream. When bubbles start to appear on top of the heavy cream, remove from the heat. Be careful not to boil."
          "\n3. Whisk in the lemon juice. Let the mixture cool for 10 minutes, then strain into a liquid measuring cup for ease of pouring."
          "\n5. Hollow out and fill lemon halves, let cool to room temperature."
          "\n6. Refrigerate for at least 1 hour or for up to 3 days."
    },
    {
      "name": "Sugar Cookies",
      "image": "assets/images/Sugarcookies.jpg",
      "ingredients": "2 1/2 cups all-purpose flour"
      "\n1 tsp baking powder"
      "\n3/4 tsp sea salt"
      "\n2 sticks unsalted butter"
      "\n1 1/4 cups granulated sugar"
      "\n1 egg"
      "\n1 tsp vanilla extract",
      "instructions": "1. Preheat the oven to 350°F. Line baking sheets with parchment paper."
      "\n2.In a medium bowl, whisk together the flour, baking powder, and salt to combine."
      "\n3.In a large bowl, use an electric mixer fitted with a paddle attachment on medium-high speed to beat the butter and 1¼ cups sugar until light and fluffy, 2 to 3 minutes. Scrape down the sides and bottom of the mixing bowl. Add the egg, egg yolk, and vanilla, and beat until combined, scraping the bowl down as needed. Slowly beat in the flour mixture."
      "\n4.Place the remaining 1/4 cup sugar in a shallow dish. Using a large (3-tablespoon) spring-loaded scoop, divide the dough into balls, then roll in sugar to coat evenly. Place the dough balls on the prepared baking sheets, spacing 2 inches apart, and flatten slightly with the bottom of a measuring cup."
      "\n5.Bake for 10 to 12 minutes, or until the cookies set and begin to brown. Cool for 5 minutes before removing to a wire rack to cool completely. Cookies can be stored in an airtight container at room temperature for up to 3 days."
    },
    {
      "name": "Peach Cobbler",
      "image": "assets/images/Peachcobbler.jpg",
      "ingredients": "Two 15-ounce cans sliced peaches in syrup\n1 Stick of butter\n1 Cup self rising flour\n1 Cup sugar\n1 Cup milk",
      "instructions": "1. Preheat the oven to 350 degrees F."
          "\n2. Drain 1 can of peaches; reserve the syrup from the other."
          "\n3. Place the butter in a 9- by 12-inch ovenproof baking dish. Heat the butter on the stove or in the oven until it's melted."
          "\n4. In a medium bowl, mix the flour and sugar."
          "\n5. Stir in the milk and the reserved syrup."
          "\n6. Pour the batter over the melted butter in the baking dish. Arrange the peaches over the batter."
          "\n7. Bake for 1 hour."
          "\n8. The cobbler is done when the batter rises around the peaches and the crust is thick and golden brown. Serve warm with ice cream."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to DetailsScreen and pass recipe data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Image.asset(
                    recipes[index]['image'],
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(
                      recipes[index]['name'],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
