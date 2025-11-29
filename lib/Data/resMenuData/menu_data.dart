import 'package:food_go/Models/resMenuModel/menu_item_model.dart';

class MenuData {
  static final List<MenuItemModel> allMenuItems = [
    //  BURGER Category (6 items) - HAS SIZES
    MenuItemModel(
      id: 101,
      category: 'Burger',
      title: 'Burger Ferguson',
      restaurant: 'Rose Garden Restaurant',
      price: 40.0,
      imageUrl: 'assets/menu/burger_ferg.png',
      itemDetails:
          'Our signature beef patty topped with special house sauce, crispy lettuce, and fresh tomatoes. A juicy, classic American favorite.',
      hasSizes: true,
      itemSizes: ['1 Patty', 'Double', 'Triple'],
    ),
    MenuItemModel(
      id: 102,
      category: 'Burger',
      title: 'Rockin\' Burgers',
      restaurant: 'Rose Garden Restaurant',
      price: 42.0,
      imageUrl: 'assets/menu/burger_rock.png',
      itemDetails:
          'A spicy blend of jalapeños, pepper jack cheese, and our chili aioli on a toasted brioche bun. Handle the heat, or don\'t!',
      hasSizes: true,
      itemSizes: ['1 Patty', 'Double', 'Triple'],
    ),
    MenuItemModel(
      id: 103,
      category: 'Burger',
      title: 'Cheesy Delight',
      restaurant: 'Rose Garden Restaurant',
      price: 48.5,
      imageUrl: 'assets/menu/burger_cheesy.png',
      itemDetails:
          'Two smashed patties smothered in cheddar and provolone cheese, caramelized onions, and house-made pickles. Pure cheesy indulgence.',
      hasSizes: true,
      itemSizes: ['1 Patty', 'Double', 'Triple'],
    ),
    MenuItemModel(
      id: 104,
      category: 'Burger',
      title: 'Mushroom Swiss',
      restaurant: 'Rose Garden Restaurant',
      price: 45.0,
      imageUrl: 'assets/menu/burger_mush.png',
      itemDetails:
          'Topped with sautéed portobello mushrooms, aged Swiss cheese, and truffle mayo. Earthy, rich, and truly gourmet.',
      hasSizes: true,
      itemSizes: ['1 Patty', 'Double', 'Triple'],
    ),
    MenuItemModel(
      id: 105,
      category: 'Burger',
      title: 'Baconator',
      restaurant: 'Rose Garden Restaurant',
      price: 52.0,
      imageUrl: 'assets/menu/burger_bacon.png',
      itemDetails:
          'Piled high with hickory-smoked bacon, BBQ sauce, and a crispy onion ring. The ultimate savory, smoky experience.',
      hasSizes: true,
      itemSizes: ['1 Patty', 'Double', 'Triple'],
    ),
    MenuItemModel(
      id: 106,
      category: 'Burger',
      title: 'Veggie Patty',
      restaurant: 'Rose Garden Restaurant',
      price: 35.0,
      imageUrl: 'assets/menu/burger_veggie.png',
      itemDetails:
          'A homemade plant-based patty served with fresh avocado slices and a light lemon vinaigrette. Healthy and satisfying.',
      hasSizes: true,
      itemSizes: ['1 Patty', 'Double', 'Triple'],
    ),

    // --- SANDWICH Category (6 items) - NO SIZES
    MenuItemModel(
      id: 201,
      category: 'Sandwich',
      title: 'Classic Club',
      restaurant: 'Spicy Restaurant',
      price: 32.0,
      imageUrl: 'assets/menu/sand_club.png',
      itemDetails:
          'Triple-layered toast with turkey, ham, bacon, lettuce, tomato, and mayo. Served with a side of crispy fries.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 202,
      category: 'Sandwich',
      title: 'Philly Cheesesteak',
      restaurant: 'Grill Nation',
      price: 48.0,
      imageUrl: 'assets/menu/sand_philly.png',
      itemDetails:
          'Thinly sliced ribeye steak grilled with onions and melted provolone cheese on an authentic Amoroso roll. A taste of Philadelphia.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 203,
      category: 'Sandwich',
      title: 'Turkey Avocado',
      restaurant: 'Rose Garden Restaurant',
      price: 38.0,
      imageUrl: 'assets/menu/sand_turkey.png',
      itemDetails:
          'Freshly sliced turkey breast with creamy avocado, sprouts, and mustard on whole-grain bread. Light, fresh, and nutritious.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 204,
      category: 'Sandwich',
      title: 'Reuben',
      restaurant: 'Cafecafachino',
      price: 35.5,
      imageUrl: 'assets/menu/sand_reuben.png',
      itemDetails:
          'Corned beef, Swiss cheese, sauerkraut, and Russian dressing, grilled between slices of rye bread. A hearty deli staple.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 205,
      category: 'Sandwich',
      title: 'BLT',
      restaurant: 'Spicy Restaurant',
      price: 30.0,
      imageUrl: 'assets/menu/sand_blt.png',
      itemDetails:
          'Crispy bacon, fresh lettuce, and ripe tomato slices with a hint of mayo on toasted white bread. Simple perfection.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 206,
      category: 'Sandwich',
      title: 'Chicken Caesar',
      restaurant: 'Grill Nation',
      price: 39.0,
      imageUrl: 'assets/menu/sand_caesar.png',
      itemDetails:
          'Grilled chicken and crisp romaine lettuce tossed in Caesar dressing, wrapped in a soft tortilla. A light, flavorful wrap.',
      hasSizes: false,
    ),

    // --- PIZZA Category (6 items) - HAS SIZES
    MenuItemModel(
      id: 301,
      category: 'Pizza',
      title: 'Pepperoni Supreme',
      restaurant: 'The Pizza House',
      price: 75.0,
      imageUrl: 'assets/menu/pizza_pep.png',
      itemDetails:
          'Classic tomato sauce base topped with generous portions of spicy pepperoni and mozzarella cheese. Always a crowd-pleaser.',
      hasSizes: true,
      itemSizes: ['12"', '14"', '18"'],
    ),
    MenuItemModel(
      id: 302,
      category: 'Pizza',
      title: 'Margherita',
      restaurant: 'The Pizza House',
      price: 65.0,
      imageUrl: 'assets/menu/pizza_marg.png',
      itemDetails:
          'Fresh mozzarella, vibrant tomato slices, and basil leaves on our thin, crispy crust. Simple, Italian elegance.',
      hasSizes: true,
      itemSizes: ['12"', '14"', '18"'],
    ),
    MenuItemModel(
      id: 303,
      category: 'Pizza',
      title: 'Meat Lovers',
      restaurant: 'The Pizza House',
      price: 85.0,
      imageUrl: 'assets/menu/pizza_meat.png',
      itemDetails:
          'Loaded with sausage, ham, bacon, and ground beef, making it the ultimate protein-packed meal. For serious meat fans only.',
      hasSizes: true,
      itemSizes: ['12"', '14"', '18"'],
    ),
    MenuItemModel(
      id: 304,
      category: 'Pizza',
      title: 'Hawaiian',
      restaurant: 'The Pizza House',
      price: 70.0,
      imageUrl: 'assets/menu/pizza_hawaii.png',
      itemDetails:
          'A divisive favorite! Sweet pineapple chunks and savory cooked ham over a tomato and cheese base. Sweet and savory combo.',
      hasSizes: true,
      itemSizes: ['12"', '14"', '18"'],
    ),
    MenuItemModel(
      id: 305,
      category: 'Pizza',
      title: 'Veggie Delight',
      restaurant: 'The Pizza House',
      price: 68.0,
      imageUrl: 'assets/menu/pizza_veggie.png',
      itemDetails:
          'A medley of bell peppers, olives, mushrooms, and onions for a fresh, garden-inspired pizza. Perfect for vegetarians.',
      hasSizes: true,
      itemSizes: ['12"', '14"', '18"'],
    ),
    MenuItemModel(
      id: 306,
      category: 'Pizza',
      title: 'BBQ Chicken',
      restaurant: 'The Pizza House',
      price: 78.0,
      imageUrl: 'assets/menu/pizza_bbq.png',
      itemDetails:
          'Tangy BBQ sauce base topped with grilled chicken strips, red onions, and a sprinkle of cilantro. A smoky treat.',
      hasSizes: true,
      itemSizes: ['12"', '14"', '18"'],
    ),

    // --- PASTA Category (6 items) - NO SIZES
    MenuItemModel(
      id: 401,
      category: 'Pasta',
      title: 'Spaghetti Bolognese',
      restaurant: 'The Pizza House',
      price: 55.0,
      imageUrl: 'assets/menu/pasta_bolognese.png',
      itemDetails:
          'Traditional slow-cooked meat and tomato sauce served over al dente spaghetti noodles. A classic hearty dish.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 402,
      category: 'Pasta',
      title: 'Fettuccine Alfredo',
      restaurant: 'The Pizza House',
      price: 58.0,
      imageUrl: 'assets/menu/pasta_alfredo.png',
      itemDetails:
          'Creamy Parmesan sauce coating wide fettuccine ribbons, finished with a hint of garlic and fresh parsley. Rich and decadent.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 403,
      category: 'Pasta',
      title: 'Penne Arrabbiata',
      restaurant: 'The Pizza House',
      price: 52.0,
      imageUrl: 'assets/menu/pasta_penne.png',
      itemDetails:
          'Penne tubes tossed in a spicy tomato sauce seasoned with garlic and chili peppers. A fiery, flavorful experience.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 404,
      category: 'Pasta',
      title: 'Lasagna',
      restaurant: 'The Pizza House',
      price: 65.0,
      imageUrl: 'assets/menu/pasta_lasagna.png',
      itemDetails:
          'Layers of wide pasta, ricotta cheese, meat sauce, and melted mozzarella, baked to golden perfection. Comfort food at its best.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 405,
      category: 'Pasta',
      title: 'Pesto Gnocchi',
      restaurant: 'The Pizza House',
      price: 60.0,
      imageUrl: 'assets/menu/pasta_gnocchi.png',
      itemDetails:
          'Soft potato dumplings tossed in a bright, homemade basil pesto sauce and cherry tomatoes. A light, herbaceous dish.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 406,
      category: 'Pasta',
      title: 'Carbonara',
      restaurant: 'The Pizza House',
      price: 59.0,
      imageUrl: 'assets/menu/pasta_carbonara.png',
      itemDetails:
          'Spaghetti coated in a silky sauce of egg yolk, Parmesan cheese, cured pork (guanciale or bacon), and black pepper. Authentic Roman flavor.',
      hasSizes: false,
    ),
    // ---Chicken Category (6 items) - NO SIZES---
    MenuItemModel(
      id: 501,
      category: 'Chicken',
      title: 'Fried Chicken Platter',
      restaurant: 'Rose Garden Restaurant',
      price: 65.0,
      imageUrl: 'assets/menu/chick_fried.png',
      itemDetails:
          'Crispy, seasoned fried chicken pieces served with mashed potatoes and creamy gravy. Southern comfort food done right.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 502,
      category: 'Chicken',
      title: 'Grilled Lemon Herb',
      restaurant: 'Rose Garden Restaurant',
      price: 72.0,
      imageUrl: 'assets/menu/chick_grill.png',
      itemDetails:
          'Tender chicken breast marinated in lemon and Mediterranean herbs, grilled to perfection. Served with seasonal vegetables.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 503,
      category: 'Chicken',
      title: 'Chicken Tenders (Kids)',
      restaurant: 'Rose Garden Restaurant',
      price: 35.0,
      imageUrl: 'assets/menu/chick_tenders.png',
      itemDetails:
          'Three crispy, all-white meat chicken tenders served with a side of ketchup and honey mustard. Perfect for the little ones.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 504,
      category: 'Chicken',
      title: 'Spicy Chicken Wrap',
      restaurant: 'Rose Garden Restaurant',
      price: 40.0,
      imageUrl: 'assets/menu/chick_wrap.png',
      itemDetails:
          'Diced grilled chicken mixed with a creamy, spicy dressing and crisp lettuce, rolled in a warm tortilla. Flavor with a kick.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 505,
      category: 'Chicken',
      title: 'Chicken Pot Pie',
      restaurant: 'Rose Garden Restaurant',
      price: 55.0,
      imageUrl: 'assets/menu/chick_pie.png',
      itemDetails:
          'A savory mixture of chicken, carrots, and peas in a creamy sauce, topped with a flaky, golden-brown crust. Baked fresh daily.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 506,
      category: 'Chicken',
      title: 'Buffalo Chicken Sandwich',
      restaurant: 'Rose Garden Restaurant',
      price: 48.0,
      imageUrl: 'assets/menu/chick_buff.png',
      itemDetails:
          'Breaded chicken breast tossed in zesty buffalo sauce, topped with blue cheese dressing and lettuce on a sesame bun. Hot and tangy.',
      hasSizes: false,
    ),

    // --- WINGS Category (6 items) - NO SIZES
    MenuItemModel(
      id: 601,
      category: 'Wings',
      title: 'Buffalo Wings (6pc)',
      restaurant: 'Rose Garden Restaurant',
      price: 30.0,
      imageUrl: 'assets/menu/wings_buff.png',
      itemDetails:
          'Classic, tangy buffalo sauce coated wings served with celery sticks and your choice of ranch or blue cheese dip. Medium heat.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 602,
      category: 'Wings',
      title: 'Garlic Parmesan Wings',
      restaurant: 'Rose Garden Restaurant',
      price: 32.0,
      imageUrl: 'assets/menu/wings_parm.png',
      itemDetails:
          'Tossed in melted butter, roasted garlic, and grated Parmesan cheese. A rich, savory alternative to traditional wings.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 603,
      category: 'Wings',
      title: 'Honey BBQ Wings (12pc)',
      restaurant: 'Spicy Restaurant',
      price: 55.0,
      imageUrl: 'assets/menu/wings_bbq.png',
      itemDetails:
          'Slow-smoked wings generously coated in our sweet and smoky honey BBQ glaze. Fall-off-the-bone tender.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 604,
      category: 'Wings',
      title: 'Spicy Mango Habanero',
      restaurant: 'Rose Garden Restaurant',
      price: 35.0,
      imageUrl: 'assets/menu/wings_mango.png',
      itemDetails:
          'A thrilling mix of sweet, tropical mango and fiery habanero peppers. A unique and intensely spicy flavor profile.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 605,
      category: 'Wings',
      title: 'Plain Wings',
      restaurant: 'Rose Garden Restaurant',
      price: 28.0,
      imageUrl: 'assets/menu/wings_plain.png',
      itemDetails:
          'Crispy, un-sauced wings, perfect for dipping in your own sauce choices or for a simple, savory crunch. Lightly seasoned.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 606,
      category: 'Wings',
      title: 'Smoked Paprika Wings',
      restaurant: 'Rose Garden Restaurant',
      price: 33.0,
      imageUrl: 'assets/menu/wings_paprika.png',
      itemDetails:
          'Dry-rubbed with Spanish smoked paprika and chili powder for a deep, smoky, non-sauced flavor. Served crispy.',
      hasSizes: false,
    ),

    // --- NOODLE Category (6 items) - NO SIZES
    MenuItemModel(
      id: 701,
      category: 'Noodle',
      title: 'Dragon Noodle Bowl',
      restaurant: 'Wok Master',
      price: 58.0,
      imageUrl: 'assets/menu/noodle_dragon.png',
      itemDetails:
          'Thick egg noodles in a rich, spicy broth with shiitake mushrooms, baby bok choy, and chili oil. A powerful, savory experience.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 702,
      category: 'Noodle',
      title: 'Pad Thai',
      restaurant: 'Wok Master',
      price: 62.0,
      imageUrl: 'assets/menu/noodle_pad.png',
      itemDetails:
          'Stir-fried rice noodles with tofu, peanuts, bean sprouts, and a tangy tamarind sauce. A classic Thai street food.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 703,
      category: 'Noodle',
      title: 'Singapore Noodles',
      restaurant: 'Wok Master',
      price: 60.0,
      imageUrl: 'assets/menu/noodle_sing.png',
      itemDetails:
          'Thin rice vermicelli stir-fried with shrimp, char siu pork, and vegetables in a light, aromatic curry powder sauce. Light and flavorful.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 704,
      category: 'Noodle',
      title: 'Udon Soup',
      restaurant: 'Wok Master',
      price: 55.0,
      imageUrl: 'assets/menu/noodle_udon.png',
      itemDetails:
          'Thick, chewy udon noodles served in a savory dashi broth with tempura flakes and scallions. The perfect comforting soup.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 705,
      category: 'Noodle',
      title: 'Lo Mein',
      restaurant: 'Wok Master',
      price: 50.0,
      imageUrl: 'assets/menu/noodle_lomein.png',
      itemDetails:
          'Soft egg noodles tossed with your choice of protein and mixed seasonal vegetables in a rich soy-based sauce. A Chinese takeout favorite.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 706,
      category: 'Noodle',
      title: 'Spicy Garlic Noodles',
      restaurant: 'Wok Master',
      price: 57.0,
      imageUrl: 'assets/menu/noodle_garlic.png',
      itemDetails:
          'Chewy noodles tossed in a fragrant, buttery sauce featuring copious amounts of fresh garlic and chili flakes. Add shrimp or chicken.',
      hasSizes: false,
    ),

    // --- RICE Category (Wok Master - 6 items) - NO SIZES
    MenuItemModel(
      id: 801,
      category: 'Rice',
      title: 'Chicken Fried Rice',
      restaurant: 'Wok Master',
      price: 48.0,
      imageUrl: 'assets/menu/rice_chick.png',
      itemDetails:
          'Wok-tossed rice with savory chicken pieces, scrambled egg, carrots, and peas in a light soy sauce. Classic, satisfying flavor.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 802,
      category: 'Rice',
      title: 'Shrimp Fried Rice',
      restaurant: 'Wok Master',
      price: 55.0,
      imageUrl: 'assets/menu/rice_shrimp.png',
      itemDetails:
          'Jumbo shrimp stir-fried with jasmine rice, ginger, and scallions. A premium and flavorful fried rice option.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 803,
      category: 'Rice',
      title: 'Steamed White Rice',
      restaurant: 'Wok Master',
      price: 15.0,
      imageUrl: 'assets/menu/rice_white.png',
      itemDetails:
          'Fluffy, perfectly steamed jasmine white rice. The ideal base for any of our stir-fries or curries.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 804,
      category: 'Rice',
      title: 'Pineapple Curry Rice',
      restaurant: 'Wok Master',
      price: 60.0,
      imageUrl: 'assets/menu/rice_curry.png',
      itemDetails:
          'Sweet pineapple, cashews, raisins, and chicken tossed with rice in a mild yellow curry powder. Served in a carved pineapple.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 805,
      category: 'Rice',
      title: 'Veggie Fried Rice',
      restaurant: 'Wok Master',
      price: 45.0,
      imageUrl: 'assets/menu/rice_veggie.png',
      itemDetails:
          'A vegetarian blend of rice, broccoli, corn, bell peppers, and snap peas, stir-fried with light seasoning. Fresh and crisp.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 806,
      category: 'Rice',
      title: 'Coconut Rice',
      restaurant: 'Wok Master',
      price: 20.0,
      imageUrl: 'assets/menu/rice_coco.png',
      itemDetails:
          'Fragrant jasmine rice slow-cooked in coconut milk and a hint of salt. Slightly sweet and perfect with spicy dishes.',
      hasSizes: false,
    ),
    // --- RICE Category (Rose Garden Restaurant - 6 items) - NO SIZES
    MenuItemModel(
      id: 1401,
      category: 'Rice',
      title: 'Savory Basmati Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 25.0,
      imageUrl: 'assets/menu/rg_rice_basmati.png',
      itemDetails:
          'Long-grain Basmati rice infused with cardamom, cloves, and bay leaf. A simple, aromatic side dish.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1402,
      category: 'Rice',
      title: 'Saffron Pilaf with Nuts',
      restaurant: 'Rose Garden Restaurant',
      price: 35.0,
      imageUrl: 'assets/menu/rg_rice_pilaf.png',
      itemDetails:
          'Fluffy rice cooked with expensive saffron threads, toasted almonds, and pistachios. Rich and celebratory.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1403,
      category: 'Rice',
      title: 'Mediterranean Lemon Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 30.0,
      imageUrl: 'assets/menu/rg_rice_lemon.png',
      itemDetails:
          'Rice mixed with fresh lemon juice, lemon zest, and a touch of oregano and chicken broth. Bright and tangy.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1404,
      category: 'Rice',
      title: 'Curried Vegetable Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 42.0,
      imageUrl: 'assets/menu/rg_rice_curry.png',
      itemDetails:
          'Rice and seasonal vegetables tossed in a mild, creamy Indian-style curry blend. A flavorful, vegetarian meal.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1405,
      category: 'Rice',
      title: 'Black Bean & Corn Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 38.0,
      imageUrl: 'assets/menu/rg_rice_blackbean.png',
      itemDetails:
          'Southwestern-style rice mixed with black beans, sweet corn, cilantro, and cumin. Great as a side or light lunch.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1406,
      category: 'Rice',
      title: 'Cilantro Lime Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 28.0,
      imageUrl: 'assets/menu/rg_rice_cilantro.png',
      itemDetails:
          'Fluffy rice infused with fresh lime juice and finely chopped cilantro. A zesty, refreshing base for tacos or bowls.',
      hasSizes: false,
    ),

    // --- STEAK Category (6 items) - NO SIZES
    MenuItemModel(
      id: 901,
      category: 'Steak',
      title: 'Ribeye Steak (10oz)',
      restaurant: 'Grill Nation',
      price: 120.0,
      imageUrl: 'assets/menu/steak_ribeye.png',
      itemDetails:
          'Highly marbled and flavorful ribeye, seasoned simply and seared over an open flame. Served with your choice of side.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 902,
      category: 'Steak',
      title: 'Filet Mignon',
      restaurant: 'Grill Nation',
      price: 150.0,
      imageUrl: 'assets/menu/steak_filet.png',
      itemDetails:
          'The most tender cut of beef, buttery soft and expertly grilled. Served with a peppercorn reduction sauce.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 903,
      category: 'Steak',
      title: 'Sirloin Steak',
      restaurant: 'Grill Nation',
      price: 95.0,
      imageUrl: 'assets/menu/steak_sirloin.png',
      itemDetails:
          'A lean, hearty cut with a bold beefy flavor, grilled to your desired temperature. A classic steakhouse favorite.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 904,
      category: 'Steak',
      title: 'Steak Frites',
      restaurant: 'Grill Nation',
      price: 80.0,
      imageUrl: 'assets/menu/steak_frites.png',
      itemDetails:
          'Grilled sirloin slices served with a generous portion of our house-made shoestring fries and herb butter. French bistro style.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 905,
      category: 'Steak',
      title: 'T-Bone Steak',
      restaurant: 'Grill Nation',
      price: 130.0,
      imageUrl: 'assets/menu/steak_tbone.png',
      itemDetails:
          'A combination of tender filet and robust strip steak on the bone. The best of both worlds, perfectly grilled.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 906,
      category: 'Steak',
      title: 'Flat Iron Steak',
      restaurant: 'Grill Nation',
      price: 75.0,
      imageUrl: 'assets/menu/steak_flatiron.png',
      itemDetails:
          'A well-marbled, flavorful cut from the shoulder, sliced thin and served with chimichurri sauce. Great value.',
      hasSizes: false,
    ),

    // --- BBQ Category (6 items) - NO SIZES
    MenuItemModel(
      id: 1001,
      category: 'BBQ',
      title: 'Smoked Beef Brisket',
      restaurant: 'Grill Nation',
      price: 90.0,
      imageUrl: 'assets/menu/bbq_brisket.png',
      itemDetails:
          'Slow-smoked for 14 hours over hickory wood until meltingly tender. Served with a side of coleslaw and pickles.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1002,
      category: 'BBQ',
      title: 'Pulled Pork Sandwich',
      restaurant: 'Grill Nation',
      price: 50.0,
      imageUrl: 'assets/menu/bbq_pork.png',
      itemDetails:
          'Pork shoulder seasoned and slow-smoked, then shredded and tossed in Carolina Gold BBQ sauce. Piled high on a bun.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1003,
      category: 'BBQ',
      title: 'BBQ Ribs (Half Rack)',
      restaurant: 'Grill Nation',
      price: 85.0,
      imageUrl: 'assets/menu/bbq_ribs.png',
      itemDetails:
          'Tender baby back ribs dry-rubbed and glazed with our sweet and tangy house BBQ sauce. Served with cornbread.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1004,
      category: 'BBQ',
      title: 'BBQ Chicken Leg Quarters',
      restaurant: 'Grill Nation',
      price: 60.0,
      imageUrl: 'assets/menu/bbq_chick.png',
      itemDetails:
          'Juicy chicken leg quarters smoked to a beautiful mahogany color and brushed with a classic sauce. A rustic BBQ staple.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1005,
      category: 'BBQ',
      title: 'Smoked Sausage',
      restaurant: 'Grill Nation',
      price: 45.0,
      imageUrl: 'assets/menu/bbq_sausage.png',
      itemDetails:
          'Thick, flavorful pork sausage links smoked in-house and served with sautéed peppers and onions. Perfect appetizer.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1006,
      category: 'BBQ',
      title: 'BBQ Platter',
      restaurant: 'Grill Nation',
      price: 110.0,
      imageUrl: 'assets/menu/bbq_platter.png',
      itemDetails:
          'A sampler of brisket, pulled pork, and a quarter rack of ribs. Comes with two sides and is great for sharing.',
      hasSizes: false,
    ),

    // --- CAKE Category (6 items) - NO SIZES
    MenuItemModel(
      id: 1101,
      category: 'Cake',
      title: 'Velvet Red Cake',
      restaurant: 'Sweet Spot Desserts',
      price: 35.0,
      imageUrl: 'assets/menu/cake_red.png',
      itemDetails:
          'Moist red velvet cake layered with our signature cream cheese frosting. A rich and beautiful dessert slice.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1102,
      category: 'Cake',
      title: 'Chocolate Lava Cake',
      restaurant: 'Sweet Spot Desserts',
      price: 40.0,
      imageUrl: 'assets/menu/cake_lava.png',
      itemDetails:
          'Warm, decadent chocolate cake with a molten fudge center that oozes out when you cut into it. Served with vanilla ice cream.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1103,
      category: 'Cake',
      title: 'New York Cheesecake',
      restaurant: 'Sweet Spot Desserts',
      price: 38.0,
      imageUrl: 'assets/menu/cake_cheesecake.png',
      itemDetails:
          'A rich, dense, and creamy cheesecake on a graham cracker crust. Served with a tart strawberry topping.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1104,
      category: 'Cake',
      title: 'Tiramisu',
      restaurant: 'Sweet Spot Desserts',
      price: 42.0,
      imageUrl: 'assets/menu/cake_tiramisu.png',
      itemDetails:
          'Coffee-soaked ladyfingers layered with a light, airy mascarpone cream and dusted with cocoa powder. The classic Italian dessert.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1105,
      category: 'Cake',
      title: 'Carrot Cake Slice',
      restaurant: 'Sweet Spot Desserts',
      price: 30.0,
      imageUrl: 'assets/menu/cake_carrot.png',
      itemDetails:
          'A spiced carrot cake packed with walnuts and raisins, topped with thick cream cheese icing. Rustic and delicious.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1106,
      category: 'Cake',
      title: 'Lemon Drizzle Cake',
      restaurant: 'Sweet Spot Desserts',
      price: 33.0,
      imageUrl: 'assets/menu/cake_lemon.png',
      itemDetails:
          'A light, moist cake soaked in a sweet and tart lemon glaze. Refreshing and perfect with coffee.',
      hasSizes: false,
    ),

    // --- ICE CREAM Category (6 items) - NO SIZES
    MenuItemModel(
      id: 1201,
      category: 'Ice Cream',
      title: 'Vanilla Bean Scoop',
      restaurant: 'Sweet Spot Desserts',
      price: 15.0,
      imageUrl: 'assets/menu/ice_vanilla.png',
      itemDetails:
          'Classic, smooth vanilla ice cream flecked with real vanilla bean seeds. Simple and timeless.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1202,
      category: 'Ice Cream',
      title: 'Triple Chocolate Fudge',
      restaurant: 'Sweet Spot Desserts',
      price: 18.0,
      imageUrl: 'assets/menu/ice_choc.png',
      itemDetails:
          'Rich dark chocolate ice cream swirled with chocolate fudge and chocolate chips. A chocoholic\'s dream.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1203,
      category: 'Ice Cream',
      title: 'Strawberry Cheesecake Gelato',
      restaurant: 'Sweet Spot Desserts',
      price: 20.0,
      imageUrl: 'assets/menu/ice_straw.png',
      itemDetails:
          'Creamy Italian-style gelato blended with chunks of real cheesecake and strawberry purée. Heavenly texture.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1204,
      category: 'Ice Cream',
      title: 'Cookie Dough Blizzard',
      restaurant: 'Sweet Spot Desserts',
      price: 22.0,
      imageUrl: 'assets/menu/ice_cookie.png',
      itemDetails:
          'Vanilla ice cream blended thick with large chunks of edible chocolate chip cookie dough. Fun and indulgent.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1205,
      category: 'Ice Cream',
      title: 'Salted Caramel',
      restaurant: 'Sweet Spot Desserts',
      price: 19.0,
      imageUrl: 'assets/menu/ice_caramel.png',
      itemDetails:
          'Sweet caramel ice cream balanced with a hint of sea salt. A perfect blend of sweet and savory.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1206,
      category: 'Ice Cream',
      title: 'Pistachio Scoop',
      restaurant: 'Sweet Spot Desserts',
      price: 18.0,
      imageUrl: 'assets/menu/ice_pistachio.png',
      itemDetails:
          'Nutty pistachio flavor with a vibrant green hue, often containing crushed pistachio nuts. A traditional favorite.',
      hasSizes: false,
    ),

    // --- COFFEE Category (6 items) - HAS SIZES
    MenuItemModel(
      id: 1301,
      category: 'Coffee',
      title: 'Espresso',
      restaurant: 'Sweet Spot Desserts',
      price: 12.0,
      imageUrl: 'assets/menu/coffee_esp.png',
      itemDetails:
          'A concentrated shot of rich, dark coffee, the base for all our coffee drinks. Strong and intense.',
      hasSizes: true,
      itemSizes: ['S', 'M', 'L'],
    ),
    MenuItemModel(
      id: 1302,
      category: 'Coffee',
      title: 'Latte',
      restaurant: 'Sweet Spot Desserts',
      price: 25.0,
      imageUrl: 'assets/menu/coffee_latte.png',
      itemDetails:
          'Espresso with steamed milk and a thin layer of microfoam. Perfectly smooth and creamy.',
      hasSizes: true,
      itemSizes: ['S', 'M', 'L'],
    ),
    MenuItemModel(
      id: 1303,
      category: 'Coffee',
      title: 'Cappuccino',
      restaurant: 'Sweet Spot Desserts',
      price: 25.0,
      imageUrl: 'assets/menu/coffee_capp.png',
      itemDetails:
          'Equal parts espresso, steamed milk, and velvety foam, dusted with cocoa powder. Rich and airy.',
      hasSizes: true,
      itemSizes: ['S', 'M', 'L'],
    ),
    MenuItemModel(
      id: 1304,
      category: 'Coffee',
      title: 'Americano',
      restaurant: 'Sweet Spot Desserts',
      price: 20.0,
      imageUrl: 'assets/menu/coffee_ame.png',
      itemDetails:
          'Espresso shots diluted with hot water to give it a similar strength to drip coffee. Simple and strong.',
      hasSizes: true,
      itemSizes: ['S', 'M', 'L'],
    ),
    MenuItemModel(
      id: 1305,
      category: 'Coffee',
      title: 'Mocha',
      restaurant: 'Sweet Spot Desserts',
      price: 30.0,
      imageUrl: 'assets/menu/coffee_mocha.png',
      itemDetails:
          'A rich blend of espresso, steamed milk, and sweet chocolate syrup, topped with whipped cream. A comforting treat.',
      hasSizes: true,
      itemSizes: ['S', 'M', 'L'],
    ),
    MenuItemModel(
      id: 1306,
      category: 'Coffee',
      title: 'Iced Coffee',
      restaurant: 'Sweet Spot Desserts',
      price: 28.0,
      imageUrl: 'assets/menu/coffee_iced.png',
      itemDetails:
          'Freshly brewed coffee poured over ice, customizable with milk and flavor shots. Perfect for hot days.',
      hasSizes: true,
      itemSizes: ['S', 'M', 'L'],
    ),

    // --- RICE Category (Rose Garden Restaurant - 6 items) - NO SIZES
    MenuItemModel(
      id: 1401,
      category: 'Rice',
      title: 'Savory Basmati Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 25.0,
      imageUrl: 'assets/menu/rg_rice_basmati.png',
      itemDetails:
          'Long-grain Basmati rice infused with cardamom, cloves, and bay leaf. A simple, aromatic side dish.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1402,
      category: 'Rice',
      title: 'Saffron Pilaf with Nuts',
      restaurant: 'Rose Garden Restaurant',
      price: 35.0,
      imageUrl: 'assets/menu/rg_rice_pilaf.png',
      itemDetails:
          'Fluffy rice cooked with expensive saffron threads, toasted almonds, and pistachios. Rich and celebratory.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1403,
      category: 'Rice',
      title: 'Mediterranean Lemon Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 30.0,
      imageUrl: 'assets/menu/rg_rice_lemon.png',
      itemDetails:
          'Rice mixed with fresh lemon juice, lemon zest, and a touch of oregano and chicken broth. Bright and tangy.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1404,
      category: 'Rice',
      title: 'Curried Vegetable Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 42.0,
      imageUrl: 'assets/menu/rg_rice_curry.png',
      itemDetails:
          'Rice and seasonal vegetables tossed in a mild, creamy Indian-style curry blend. A flavorful, vegetarian meal.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1405,
      category: 'Rice',
      title: 'Black Bean & Corn Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 38.0,
      imageUrl: 'assets/menu/rg_rice_blackbean.png',
      itemDetails:
          'Southwestern-style rice mixed with black beans, sweet corn, cilantro, and cumin. Great as a side or light lunch.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1406,
      category: 'Rice',
      title: 'Cilantro Lime Rice',
      restaurant: 'Rose Garden Restaurant',
      price: 28.0,
      imageUrl: 'assets/menu/rg_rice_cilantro.png',
      itemDetails:
          'Fluffy rice infused with fresh lime juice and finely chopped cilantro. A zesty, refreshing base for tacos or bowls.',
      hasSizes: false,
    ),

    // --- ASIAN FUSION Category (Wok Master - 6 items) - NO SIZES
    MenuItemModel(
      id: 1501,
      category: 'Asian Fusion',
      title: 'Kimchi Fried Rice Bowl',
      restaurant: 'Wok Master',
      price: 68.0,
      imageUrl: 'assets/menu/wk_fusion_kimchi.png',
      itemDetails:
          'Wok-fried jasmine rice blended with spicy fermented kimchi, vegetables, and a fried egg on top. Korean and Chinese influences.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1502,
      category: 'Asian Fusion',
      title: 'Curry Laksa Noodle Soup',
      restaurant: 'Wok Master',
      price: 75.0,
      imageUrl: 'assets/menu/wk_fusion_laksa.png',
      itemDetails:
          'A spicy and creamy coconut milk-based curry soup with thick wheat noodles, shrimp, and tofu puffs. Malaysian/Singaporean favorite.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1503,
      category: 'Asian Fusion',
      title: 'Spicy Peanut Satay Skewers',
      restaurant: 'Wok Master',
      price: 55.0,
      imageUrl: 'assets/menu/wk_fusion_satay.png',
      itemDetails:
          'Grilled chicken skewers marinated in turmeric and lemongrass, served with a rich, house-made spicy peanut dipping sauce. Indonesian/Thai fusion.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1504,
      category: 'Asian Fusion',
      title: 'Thai Basil Chicken Stir-Fry',
      restaurant: 'Wok Master',
      price: 62.0,
      imageUrl: 'assets/menu/wk_fusion_basil.png',
      itemDetails:
          'Minced chicken stir-fried with fragrant Thai basil, chili peppers, and garlic in a savory sauce. Served with steamed rice.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1505,
      category: 'Asian Fusion',
      title: 'Mango Sticky Rice Dessert',
      restaurant: 'Wok Master',
      price: 40.0,
      imageUrl: 'assets/menu/wk_fusion_mango.png',
      itemDetails:
          'Sweet sticky rice infused with coconut milk, served alongside fresh slices of ripe mango. A classic Southeast Asian dessert.',
      hasSizes: false,
    ),
    MenuItemModel(
      id: 1506,
      category: 'Asian Fusion',
      title: 'Vietnamese Pho Inspired Soup',
      restaurant: 'Wok Master',
      price: 70.0,
      imageUrl: 'assets/menu/wk_fusion_pho.png',
      itemDetails:
          'Fragrant beef broth with rice noodles, tender slices of beef, and fresh herbs, served with bean sprouts and lime. A lighter, refreshing soup.',
      hasSizes: false,
    ),
  ];

  static List<MenuItemModel> getItemsByCategory(final String categoryName) {
    return allMenuItems
        .where((final item) => item.category == categoryName)
        .toList();
  }

  static List<MenuItemModel> getItemsByRestaurant(final String restaurantName) {
    return allMenuItems
        .where((final item) => item.restaurant == restaurantName)
        .toList();
  }
}
