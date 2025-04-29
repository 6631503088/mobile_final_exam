import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:zip_food/models/cart_items.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Aloha Burger",
      description: "A tropical burger with pineapple and sweet BBQ sauce.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 6.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Pineapple", price: 1.29),
        Addon(name: "Extra Patty", price: 2.49),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description: "Grilled patty glazed with smoky BBQ sauce.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion Rings", price: 0.99),
        Addon(name: "Jalapenos", price: 0.69),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "Beef burger topped with blue cheese and caramelized onions.",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 7.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Blue Cheese Crumbles", price: 1.49),
        Addon(name: "Bacon", price: 1.29),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description: "A juicy beef patty with classic cheese and toppings.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Lettuce Wrap", price: 0.49),
      ],
    ),
    Food(
      name: "Vege Burger",
      description: "A healthy veggie patty with fresh toppings.",
      imagePath: "lib/images/burgers/vege_burger.png",
      price: 5.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 1.29),
        Addon(name: "Vegan Cheese", price: 1.09),
      ],
    ),

    // Desserts
    Food(
      name: "Choco Lava Bliss",
      description: "Molten chocolate cake that oozes rich fudge.",
      imagePath: "lib/images/desserts/choco_lava_bliss.png",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Choco Chips", price: 0.79),
      ],
    ),
    Food(
      name: "Lemon Tart Delight",
      description: "Zesty lemon tart with a buttery crust.",
      imagePath: "lib/images/desserts/lemon_tart_delight.png",
      price: 3.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.69),
        Addon(name: "Mint Leaf", price: 0.29),
      ],
    ),
    Food(
      name: "Strawberry Shortcake Dream",
      description: "Classic shortcake with fresh strawberries.",
      imagePath: "lib/images/desserts/strawberry_shortcake_dream.png",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Strawberries", price: 0.99),
        Addon(name: "Strawberry Syrup", price: 0.59),
      ],
    ),
    Food(
      name: "Tiramisu Elegance",
      description: "Elegant Italian dessert with coffee and mascarpone.",
      imagePath: "lib/images/desserts/tiramisu_elegance.png",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cocoa Dusting", price: 0.49),
        Addon(name: "Coffee Shot", price: 0.99),
      ],
    ),
    Food(
      name: "Vanilla Cheesecake Slice",
      description: "Smooth vanilla bean cheesecake on a graham crust.",
      imagePath: "lib/images/desserts/vanilla_bean_cheesecake_slice.png",
      price: 3.79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 0.69),
        Addon(name: "Berry Compote", price: 1.19),
      ],
    ),

    // Drinks
    Food(
      name: "Classic Cold Brew",
      description: "Chilled coffee brewed to perfection.",
      imagePath: "lib/images/drinks/classic_cold_brew.png",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vanilla Shot", price: 0.49),
        Addon(name: "Extra Ice", price: 0.19),
      ],
    ),
    Food(
      name: "Iced Berry Lemonade",
      description: "Refreshing lemonade with mixed berries.",
      imagePath: "lib/images/drinks/iced_berry_lemonade.png",
      price: 2.79,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.39),
        Addon(name: "Extra Berries", price: 0.79),
      ],
    ),
    Food(
      name: "Minty Lime Fizz",
      description: "Sparkling drink with mint and lime twist.",
      imagePath: "lib/images/drinks/minty_lime_fizz.png",
      price: 2.59,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lime", price: 0.29),
        Addon(name: "Sugar Rim", price: 0.49),
      ],
    ),
    Food(
      name: "Peachy Sparkle Soda",
      description: "Light soda with a juicy peach flavor.",
      imagePath: "lib/images/drinks/peachy_sparkle_soda.png",
      price: 2.69,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach Slice", price: 0.59),
        Addon(name: "Ice Cube", price: 0.19),
      ],
    ),
    Food(
      name: "Tropical Sunrise Smoothie",
      description: "Smooth blend of mango, pineapple, and coconut.",
      imagePath: "lib/images/drinks/tropical_sunrise_smoothie.png",
      price: 3.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Coconut Shreds", price: 0.79),
        Addon(name: "Mango Puree", price: 0.99),
      ],
    ),

    // Salads
    Food(
      name: "Asian Sesame Salad",
      description: "Crunchy veggies with sesame dressing.",
      imagePath: "lib/images/salads/asiansesame_salad.png",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sesame Seeds", price: 0.49),
        Addon(name: "Crispy Noodles", price: 0.79),
      ],
    ),
    Food(
      name: "Cesar Salad",
      description: "Classic cesar salad with romaine and parmesan.",
      imagePath: "lib/images/salads/cesar_salad.png",
      price: 4.79,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Croutons", price: 0.69),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Fresh salad with olives, feta, and tomatoes.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 4.59,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 0.89),
        Addon(name: "Kalamata Olives", price: 0.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: "Healthy mix of quinoa, cucumber, and lime.",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 4.89,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Boiled Egg", price: 1.29),
        Addon(name: "Chickpeas", price: 0.79),
      ],
    ),
    Food(
      name: "Southwest Salad",
      description: "Zesty salad with beans, corn, and chipotle dressing.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 5.19,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Black Beans", price: 0.69),
        Addon(name: "Tortilla Strips", price: 0.59),
      ],
    ),

    // Sides
    Food(
      name: "Garlic Bread",
      description: "Toasted bread with garlic butter.",
      imagePath: "lib/images/sides/garlic_bread_side.png.png",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Topping", price: 0.99),
        Addon(name: "Chili Flakes", price: 0.39),
      ],
    ),
    Food(
      name: "Loaded Fries",
      description: "Fries topped with cheese and bacon.",
      imagePath: "lib/images/sides/loadedfries_side.png.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.89),
        Addon(name: "Green Onion", price: 0.49),
      ],
    ),
    Food(
      name: "Mac & Cheese",
      description: "Creamy mac & cheese, perfectly baked.",
      imagePath: "lib/images/sides/mac_side.png.png",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Parmesan Crust", price: 0.69),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy golden onion rings.",
      imagePath: "lib/images/sides/onion_rings_side.png.png",
      price: 2.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.59),
        Addon(name: "Spicy Mayo", price: 0.69),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Sweet and crispy alternative to regular fries.",
      imagePath: "lib/images/sides/sweet_potato_side.png.png",
      price: 2.79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Maple Drizzle", price: 0.79),
        Addon(name: "Chipotle Aioli", price: 0.69),
      ],
    ),
  ];

  ///GETTERS
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  ///Operations
  ///user cart
  final List<CartItem> _cart = [];

  ///add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    /// see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      /// check if the food items are the same
      bool isSameFood = item.food == food;

      /// check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    /// if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    ///otherwise,add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  ///remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  ///get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  ///get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  ///clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  ///Helpers
  ///generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  ///format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  ///format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
