-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2025 at 09:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `created_at`, `username`, `rating`, `recipe_id`) VALUES
(17, 'worst', '2024-09-20 15:38:35', 'sufiyan', NULL, NULL),
(21, 'work more', '2024-09-20 16:55:27', 'admin', NULL, NULL),
(33, 'improve', '2024-09-20 17:24:34', 'arshad', NULL, NULL),
(38, 'nice work ', '2024-09-21 04:46:47', 'niza', NULL, NULL),
(39, 'vcbfmvbh', '2024-09-21 05:43:46', 'niza', NULL, NULL),
(41, 'zeenat', '2024-09-21 07:02:19', 'niceeeeeee', 4, NULL),
(42, 'zeenat', '2024-09-21 09:11:14', 'niceeeeeee', 4, NULL),
(43, 'not tasty', '2024-09-21 09:25:25', 'kadir', 2, NULL),
(44, 'i want recipe for chicken burger', '2024-09-21 13:31:11', 'niza', 0, NULL),
(47, 'good', '2024-09-21 14:06:25', 'niza', 4, 39),
(48, 'very tasty', '2024-09-21 14:21:22', 'ayesha', 5, 41),
(49, 'very tasty', '2024-09-21 14:21:28', 'ayesha', 5, 41),
(50, 'bad', '2024-09-21 14:21:54', 'sufiyan', 1, 39),
(51, 'bad', '2024-09-21 14:21:58', 'sufiyan', 1, 39),
(52, 'nice work but i want it without lemon', '2024-09-21 14:29:12', 'ainaz', 3, 49),
(53, 'nice work but i want it without lemon', '2024-09-21 14:29:18', 'ainaz', 3, 49),
(54, 'i want vegetarian food i dont like this recipe', '2024-09-21 14:30:00', 'rutuja', 2, 49),
(55, 'i want vegetarian food i dont like this recipe', '2024-09-21 14:30:03', 'rutuja', 2, 49),
(56, 'nice recipe i\'ll try', '2024-09-21 14:30:57', 'zeenat', 5, 49),
(57, 'nice recipe i\'ll try', '2024-09-21 14:31:00', 'zeenat', 5, 49),
(58, 'yumm', '2024-09-21 14:42:10', 'arshad', 5, 43),
(59, 'djhfudhjscffc', '2024-09-21 15:24:29', 'niza', 1, 39),
(60, 'ergdf', '2024-09-21 16:00:22', 'arshad', 3, 42),
(61, 'good', '2024-09-21 16:24:49', 'tanaaz', 5, 47),
(62, 'good', '2024-09-21 16:24:54', 'tanaaz', 5, 47),
(63, 'i tried it best recipe ever', '2024-09-22 04:49:17', 'ahemadi', 5, 48),
(64, 'good', '2024-09-23 05:17:25', 'niza', 3, 49),
(65, 'nice', '2024-09-23 05:20:59', 'niza', 3, 55),
(66, 'nice', '2024-09-23 05:21:06', 'niza', 3, 55),
(67, 'nice', '2024-09-23 05:35:08', 'niza', 3, 39),
(68, 'nice', '2024-09-23 05:35:17', 'niza', 3, 39),
(69, 'rutuja', '2024-09-30 10:41:59', 'baddest', 1, NULL),
(70, 'gud1', '2024-09-30 10:44:36', 'niza', 3, 42),
(71, 'g', '2024-09-30 12:43:16', 'abrar', 3, 56),
(72, 'g', '2024-09-30 12:43:19', 'abrar', 3, 56),
(73, 'oik', '2024-09-30 12:44:18', 'sufiyan', 2, 43),
(74, 'oik', '2024-09-30 12:44:21', 'sufiyan', 2, 43),
(75, 'bbb', '2024-09-30 12:46:09', 'admin', 2, 43),
(76, 'bbb', '2024-09-30 12:46:12', 'admin', 2, 43),
(78, 'best', '2024-09-30 12:46:51', 'ainaz', 5, 57),
(79, 'best', '2024-09-30 12:51:24', 'ainaz', 5, 57),
(80, 'tasty ', '2024-09-30 12:55:33', 'tanaaz', 3, 41),
(81, 'tasty ', '2024-09-30 12:55:37', 'tanaaz', 3, 41),
(82, 'i wana taste this', '2025-01-19 13:57:32', 'awez', 4, 49),
(83, 'great noodles ill try for sure', '2025-01-21 07:33:49', 'parveen', 5, 50),
(84, 'worst gravy', '2025-01-21 17:06:05', 'admin', 1, 42);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `subscribed_at`) VALUES
(1, 'sniza02@gmail.com', '2025-01-19 16:49:22'),
(8, 'abrarshaikh123@gmail.com', '2025-01-21 17:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT 0,
  `average_rating` float DEFAULT 0,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `description`, `ingredients`, `instructions`, `created_at`, `category`, `image`, `rating`, `average_rating`, `video_url`) VALUES
(39, 'burger', 'This hamburger patty recipe uses ground beef and an easy bread crumb mixture. Nothing beats a simple hamburger on a warm summer evening! Enjoy on ciabatta, Kaiser, or potato rolls topped with your favorite condiments.', '1 large egg\r\n\r\n½ teaspoon salt\r\n\r\n½ teaspoon ground black pepper\r\n\r\n1 pound ground beef\r\n\r\n½ cup fine dry bread crumbs', 'Preheat an outdoor grill for high heat and lightly oil grate.\r\n\r\nWhisk egg, salt, and pepper together in a medium bowl.\r\n\r\nOverhead shot of a mixing bowl with wet ingredients for a burger recipe\r\n\r\nAdd ground beef and bread crumbs; mix with your hands or a fork until well blended.\r\n\r\nOverhead shot of ground meat being mixed with ingredients for burgers\r\n\r\nForm into four 3/4-inch-thick patties.\r\n\r\nOverhead shot of formed beef patties for burgers on a baking sheet\r\n\r\nPlace patties on the preheated grill. Cover and cook 6 to 8 minutes per side, or to desired doneness. An instant-read thermometer inserted into the center should read at least 160 degrees F (70 degrees C).\r\n\r\nOverhead shot of grilled burgers resting on a baking sheet\r\n\r\nServe hot and enjoy!\r\n\r\n', '2024-09-20 12:31:38', 'starters', 'burgerimages.jpg', 0, 2.16667, NULL),
(41, 'chocolate truffle cake', 'Easy to make - the cake can be made in one bowl with a whisk, so you don\'t need a mixer.', 'Eggs - two whole eggs will set the structure of this cake and help emulsify the batter.\r\nSour cream - one of the secrets to this moist chocolate cake his cake in the absence of butter.\r\nOil - this is an oil-based cake because oil is liquid at \r\nHot water - this recipe is unique in that uses hot water in reason why this cake is so moist.\r\nDark chocolate – you\'ll need pure dark chocolate to make tets which are very convenient.\r\nWhipping cream - look for whipping cream or \"heavy\" cream ', 'STEP 1). Make the cake base. Combine dry ingredients. Sift flour, cocoa, baking powder and baking soda into a large bowl. Add sugar and salt and whisk to blend well.\r\nSTEP 2). Combine wet ingredients. Combine eggs, oil, sour cream and vanilla in a medium bowl and whisk to blend well.\r\nSTEP 3). Mix wet and dry ingredients. Pour the wet ingredients into the bowl with the dry ingredients and mix with a whisk or an electric hand mixer on medium-low until blended. It will be thick and somewhat dry.\r\nSTEP 4). Mix in hot water. Add the hot water gradually in two ', '2024-09-20 12:45:01', 'desserts', 'chocolate_cake.jpg', 0, 4, NULL),
(42, 'CHICKEN CURRY', 'Chicken curry from the Indian subcontinent typically features chicken stewed in a tomato-based sauce seasoned with aromatic spices. This recipe, like many others, calls for curry powder (a spice blend made with coriander, turmeric, cumin, and chili powder).', '3 tablespoons olive oil\r\n\r\n1 small onion, chopped\r\n\r\n2 cloves garlic, minced\r\n\r\n3 tablespoons curry powder\r\n\r\n1 teaspoon ground cinnamon\r\n\r\n1 teaspoon paprika\r\n\r\n1 bay leaf\r\n\r\n½ teaspoon grated fresh ginger root\r\n\r\n½ teaspoon white sugar\r\n\r\nsalt to taste\r\n\r\n2 skinless, boneless chicken breast halves - cut into bite-size pieces\r\n\r\n1 tablespoon tomato paste\r\n\r\n1 cup plain yogurt\r\n\r\n¾ cup coconut milk\r\n\r\n½ lemon, juiced\r\n\r\n½ teaspoon cayenne pepper', 'Heat olive oil in a skillet over medium heat. Sauté onion until lightly browned.\r\n\r\nOnions sautéing in a skillet. \r\nDotdash Meredith Food Studios\r\nStir in garlic, curry powder, cinnamon, paprika, bay leaf, ginger, sugar, and salt. Continue stirring for 2 minutes.\r\n\r\nVarious spices and seasonings being mixed with onions and cooking on a skillet. \r\nDotdash Meredith Food Studios\r\nAdd chicken pieces, tomato paste, yogurt, and coconut milk. Bring to a boil, reduce heat, and simmer for 20 to 25 minutes.\r\n\r\nRaw chicken, coconut milk, and other spices cooking in a skillet. \r\nDotdash Meredith Food Studios\r\nRemove bay leaf, and stir in lemon juice and cayenne pepper. Simmer 5 more minutes.\r\n\r\nChicken curry simmering in a skillet. \r\nDotdash Meredith Food Studios\r\nServe hot and enjoy!', '2024-09-20 12:53:48', 'main course', 'chicken_curry.jpg', 0, 2.33333, NULL),
(43, 'Watermelon Lime Agua Fresca', 'This recipe makes a very refreshing watermelon drink. You may also use cantaloupe or honeydew melon. It tastes just like the juices served in authentic Mexican restaurants. Serve in tall glasses over ice.', '8 cups water, divided\r\n\r\n5 cups peeled, cubed, and seeded watermelon\r\n\r\n½ cup white sugar, or more to taste\r\n\r\n⅓ cup lime juice, or more to taste', 'Combine 1 cup water, watermelon, and sugar in a blender; process until smooth.\r\n\r\nPour mixture into a large pitcher; stir in lime juice and remaining 7 cups water. Taste; adjust sugar or lime juice. Refrigerate until chilled, about 1 hour.', '2024-09-20 12:56:53', 'drinks', 'mocktailimages.jpg', 0, 2.6, NULL),
(47, 'PIZZA', 'If you\'re looking for a homemade pizza crust recipe that\'s great for beginners, you\'re in luck. This top-rated recipe is super easy to throw together on a whim – and it puts the store-bought stuff to shame. Learn how to make the best pizza crust of your life with just a few ingredients, find out how to shape the dough, and get our best storage secrets.', 'You need just five ingredients (plus some warm water) to make this super simple pizza crust.\r\n\r\nYeast\r\nActive dry yeast is a leavening agent, which means it\'s the ingredient that causes the pizza dough to rise.\r\n\r\nSugar\r\nTo activate your yeast, you\'ll need to dissolve it in warm water with a teaspoon of sugar. The sugar gives the yeast something to eat and speeds up the activation process. You\'ll know your yeast is active when it becomes bubbly and frothy on top.\r\n\r\nBread Flour\r\nBread flour is ideal for pizza crust becauseit creates chewier results than all-purpose flour. This is because it contains more protein, which helps produce lots of gluten. Gluten is what gives the crust elasticity.\r\n\r\nOlive Oil\r\nOlive oil serves a couple purposes when it comes to pizza crust: Not only does it add color and flavor, but it creates a barrier between the oil and water. This oily barrier prevents sogginess.\r\n\r\nSalt\r\nA little bit of salt goes a long way. Salt adds flavor, strengthens the gluten (creating a chewier crust), and slows down fermentation (resulting in a better rise).', 'How to Roll Out Pizza Dough\r\nStretching pizza dough is the most hands-on part of the pizza crust-making process. It takes a little practice, but it\'s as easy as pie (pun intended). To shape the dough:\r\n\r\nLet the Dough Come to Room Temperature\r\nAfter you\'re finished mixing the ingredients, allow your dough to rest on the counter for about 5 minutes. This will allow the gluten to relax, making the dough much easier to stretch and shape.\r\n\r\nPrepare Your Surface With Oil\r\nYou might feel inclined to prep your workspace with a big handful of flour to prevent sticking. This is a helpful step with many kinds of dough. However, in this case, too much flour can make your pizza crust tough. Instead, rub your surface (and your hands) with a few tablespoons of olive oil and maybe a little bit of flour. This will prevent sticking, encourage a crispy texture, and ensure a gorgeous golden color.\r\n\r\nShape the Dough\r\nYou have a few options when it comes to shaping the dough. Stretch it in the air, use a rolling pin, or pat it with your hands. No matter which method you choose, make sure not to overwork the dough. Working it too much will create a tough texture. When you\'re done, you should have an even circle that\'s about 10 to 12 inches wide and about ⅓-inch thick. If you get too thin, the crust may not be able to support the sauce and toppings.\r\n\r\ncloseup of an edge of a homemade pepperoni pizza', '2024-09-21 11:58:28', 'starters', 'PIZZA.jpg', 0, 5, NULL),
(48, 'Baked Chicken Marinara', 'This baked chicken marinara could not be easier. Seasoned, pan-seared chicken breasts bake in the same skillet with marinara and mozzarella for a cozy, comforting dinner.', '4 (8 ounce) skinless, boneless chicken breasts\r\n\r\n2 teaspoons kosher salt\r\n\r\n1 teaspoon dried Italian seasoning\r\n\r\n2 tablespoons olive oil\r\n\r\n1 (24 ounce) jar marinara sauce (such as Rao’s®)\r\n\r\n8 ounces low-moisture, part-skim mozzarella cheese, shredded (about 2 cups)\r\n\r\n1/4 cup torn fresh basil leaves\r\n\r\ncooked pasta, for serving (optional)', 'Gather all ingredients. Preheat the oven to 375 degrees F (190 degrees C) with racks in upper and lower third positions.\r\n\r\nBaked Chicken Marinara ingredients on a counter \r\nDotdash Meredith Food Studios\r\nSprinkle both sides of chicken evenly with salt and Italian seasoning. Heat oil in a deep, large oven-safe skillet over medium-high heat. Add chicken and cook until golden brown on both sides, 3 to 4 minutes per side.\r\n\r\nChicken cooking in a pan on a burner \r\nDotdash Meredith Food Studios\r\nPour marinara sauce evenly over chicken and sprinkle with mozzarella. Cover with aluminum foil.\r\n\r\nChicken Marinara topped with shredded cheese in a pan on a burner \r\nDotdash Meredith Food Studios\r\nBake on the lower third rack in the preheated oven until cheese is melted, the sauce is bubbling around the edges, and a thermometer inserted into thickest portion of chicken registers 165 degrees F (74 degrees C), 20 to 25 minutes.\r\n\r\nBaked Chicken Marinara in a pan on a cooling rack next to aluminum foil \r\nDotdash Meredith Food Studios\r\nRemove skillet from oven and remove foil. Increase oven temperature to broil. Once preheated, return skillet to upper third rack and broil until cheese is lightly browned in spots, about 2 minutes.\r\n\r\nBaked Chicken Marinara in a pan on a cooling rack \r\nDotdash Meredith Food Studios\r\nGarnish with fresh basil and serve with pasta.', '2024-09-21 12:27:35', 'main course', 'bakedChick.jpg', 0, 5, NULL),
(49, 'Mediterranean Baked Cod with Lemon', 'This Mediterranean baked cod with lemon, deliciously seasoned with fresh Mediterranean herbs, garlic, and lemon, is ready in 25 minutes, start to finish. Serve with your favorite potato dish, and a green vegetable or salad, and your meal is done.', '3 tablespoons unsalted butter, softened\r\n\r\n1 tablespoon finely minced fresh garlic\r\n\r\n1 tablespoon minced fresh parsley\r\n\r\n2 teaspoons minced fresh oregano\r\n\r\n1 teaspoon minced fresh thyme or rosemary\r\n\r\n1/2 teaspoon finely ground pink salt, or to taste\r\n\r\n1/4 teaspoon freshly ground black pepper\r\n\r\n1/2 teaspoon paprika\r\n\r\n4 (6 ounce) cod filets\r\n\r\n2 lemons, each cut into 8 thin slices\r\n\r\n1 tablespoon extra virgin olive oil\r\n\r\n4 sprigs fresh parsley for garnish (optional)', 'Preheat the oven to 400 degrees F (200 degrees C).\r\n\r\nPlace softened butter, minced garlic, parsley, oregano, and thyme or rosemary on a cutting board. Using a sharp knife, cut herbs and garlic into each other and the butter, cutting and mixing as you go. Add pink salt, black pepper, and paprika, and mix until well blended.\r\n\r\nPat cod filets dry. In a 12x18-inch casserole or baking pan, place each filet on top of 2 lemon slices. Evenly divide herb butter mixture among the filets; use a fork or offset spatula to spread herb butter over filets. Top each filet with 2 remaining lemon slices.\r\n\r\nBake in the preheated oven until cod flakes easily with a fork, 13 to 15 minutes. See note.\r\n\r\nTo serve, drizzle each filet with extra virgin olive oil, and garnish with fresh parsley, if desired.', '2024-09-21 12:29:36', 'main course', 'cod.jpg', 0, 3.375, NULL),
(50, 'Fried Cabbage and Egg Noodles', 'This is a German recipe for fried cabbage and noodles that belonged to my grandmother. It\'s cabbage that is lightly browned in butter and tossed with egg noodles for a wonderful, hearty, and fast dish.', '1 (16 ounce) package egg noodles\r\n\r\n1 stick butter\r\n\r\n1 medium head green cabbage, chopped\r\n\r\nsalt and pepper to taste', 'Bring a large pot of lightly salted water to a boil. Add egg noodles and cook until the pasta is tender yet firm to the bite, about 5 minutes; drain.\r\n\r\nMeanwhile, melt butter in a large skillet over low heat. Add cabbage and season with salt and pepper. Cover and cook until the cabbage begins to brown, 5 to 7 minutes. Add cooked noodles; cook and stir until the noodles begin to brown, about 5 minutes.', '2024-09-21 12:32:05', 'main course', 'noodle.jpg', 0, 5, NULL),
(51, 'Eggnog Creme Brulee', 'I have been making crème brûlée for my wife for quite some time, and one day, she asked me, \'Honey, is it possible to make crème brûlée out of eggnog? I think that would be so yummy.\' ', '2 cups eggnog\r\n\r\n4 egg yolks\r\n\r\n¼ cup white sugar\r\n\r\n3 ounces mascarpone cheese, softened\r\n\r\n1 teaspoon vanilla extract (Optional)\r\n\r\n1 dash ground nutmeg (Optional)\r\n\r\n1 dash ground cinnamon (Optional)', 'Preheat the oven to 350 degrees F (175 degrees C). Place 4 ramekins or custard cups into a shallow baking dish; add enough water to come halfway up the sides of the ramekins.\r\n\r\nHeat eggnog in a pan over medium heat; cook and stir occasionally until simmers, about 10 minutes.\r\n\r\nMeanwhile, beat egg yolks and sugar together in a mixing bowl until light colored and frothy. Stir in mascarpone until well blended and smooth; whisk in 1/4 cup heated eggnog. Gradually whisk in remaining eggnog. Pour custard through a fine-mesh-sieve to remove any egg strands. Stir in vanilla extract, nutmeg, and cinnamon. Pour into the prepared ramekins, dividing evenly.\r\n\r\nBake in the preheated oven until custard set, 30 to 45 minutes. Centers should wiggle slightly when shaken, but not be soupy.\r\n\r\nRemove from oven and cool 30 minutes; refrigerate at least 3 hours before serving.', '2024-09-21 12:34:21', 'desserts', 'des.jpg', 0, 0, NULL),
(57, 'White Sauce Pasta', 'Creamy white sauce pasta with veggies is one of my favorite pasta recipes. It’s cheesy and oh so good! Packed with veggies, this is a great way to make kids eat their veggies! I like to serve it with a side of garlic bread for that perfect comforting meal.', 'Pasta: I like using penne pasta probably because that’s how I always had it in India but you can definitely use other pasta shapes. Macaroni and Rigatoni will also work well. I personally don’t like using spaghetti.\r\n\r\nVeggies: You can use any veggies that you like in this pasta, the day I made this pasta, I had peppers and broccoli at home and that’s what I used in the recipe along with onion and sweet corn. I also use tons of garlic because garlic just goes so well in this pasta.\r\n\r\nMilk: I like using whole milk but 2% would also work. Adding cream makes it richer.\r\n\r\nSeasonings: I have added dried Italian seasoning and dried oregano, you can use herbs like basil and thyme as well. Add more or less of the seasoning and adjust to taste.', '1-Boil 150 grams of pasta according to instructions on the package. I used regular penne pasta which was supposed to be boiled for 9 to 11 minutes. and drain. Make sure you don’t overcook your pasta, you want it al-dente. Note: use only 1 cup pasta if you like more sauce in your pasta. While the pasta is boiling chop all the veggies.\r\n\r\n2- Once the pasta is boiled, drain it using a colander and set aside.\r\n\r\n3- Melt 1 tablespoon of butter in a pan on medium heat. Add all the veggies –\r\n\r\n1 small red onion, chopped\r\n1 medium red pepper, sliced\r\n3/4 cup small broccoli florets\r\n1/2 cup sweet corn (frozen corn which I added to hot water for 5 minutes before using).\r\n4- Cook the veggies for 2 minutes. They should remain crunchy. You can use other veggies like carrots, peas as well.\r\n5- Once done, remove veggies onto a plate.\r\n\r\n6- To another pan or you can use the same pan, now add 1 tablespoon olive oil and the remaining tablespoon of butter.\r\n\r\n7- Once the butter melts, add the 5-6 chopped garlic cloves and cook for 1 minute until fragrant.\r\n\r\n8- Then add in 1 & 1/2 tablespoons of flour.\r\n9- Whisk the flour continuously, using a wire whisk for around 30 to 60 seconds. You don’t have to brown the flour much.\r\n\r\n10- Then add in 2 cups of milk. You can also add 1/4 cup heavy cream here or use additional 1/4 cup milk.\r\n\r\n11- Mix everything using a whisk so that there are no lumps formed.\r\n\r\n12- Add in the seasonings:\r\n\r\n1 teaspoon Italian seasonings\r\n1 teaspoon dried oregano\r\n1/2 teaspoon red chili flakes (to taste)\r\n1/2 teaspoon salt, or to taste\r\nblack pepper, to taste\r\n13- Mix in everything and let the sauce simmer.\r\n\r\n14- Sauce will thicken as it simmers and in 4 to 5 minutes it will coat the back of the spoon. Turn heat to lowest.\r\n\r\n15- Add in the veggies and the boiled pasta.\r\n\r\n16- Toss until the pasta and veggies are coated with the sauce. Taste test and adjust the seasonings at this point. Serve warm!\r\n\r\n', '2024-09-30 10:47:25', 'starters', 'n3.jpg', 0, 5, NULL),
(59, 'afghai chicken gravy', 'Afghani chicken is as rustic yet robust as it gets!', '1 kg Chicken (thigh/drumstick) चिकन\r\n\r\n½ cup Prepared Curd Mixture, तैयार किया हुआ दही का मिश्रण\r\n\r\n \r\n\r\nFor Paste\r\n\r\n½ cup Coriander leaves, धनिया पत्ता\r\n\r\n2-3 Green chillies, हरी मिर्च\r\n\r\n1 inch Ginger, peeled, slice, अदरक\r\n\r\n6-8 Garlic cloves, लहसुन\r\n\r\n2 large White onions, roughly slice, सफेद प्याज\r\n\r\nSalt to taste, नमक स्वादअनुसार\r\n\r\n2-3 tbsp Oil, तेल\r\n\r\n \r\n\r\nFor Curd Mixture\r\n\r\nPrepared Paste,तैयार किया हुआ पेस्ट\r\n\r\n1 ½ cup Curd, beaten, दही\r\n\r\n¼ tsp Turmeric powder, हल्दी पाउडर\r\n\r\n½ tsp Coriander powder, धनिया पाउडर\r\n\r\n½ tsp Cumin powder, जीरा पाउडर\r\n\r\n¼ tsp Garam masala (optional), गरम मसाला\r\n\r\n½ tsp Dry fenugreek leaves, crushed, कसूरी मेथी\r\n\r\n \r\n\r\nFor Roasting Chicken\r\n\r\n2 tbsp Ghee, घी\r\n\r\n \r\n\r\nFor Gravy\r\n\r\n2-3 tbsp Ghee, घी\r\n\r\n2 Bay leaf, तेज पत्ता\r\n\r\n1 inch Cinnamon stick, दालचीनी\r\n\r\n2 Green cardamom, हरी इलायची\r\n\r\nPrepared Curd Mixture, तैयार किया हुआ दही का मिश्रण\r\n\r\nRoasted Chicken, भुना हुआ चिकन\r\n\r\n2 cup Water,पानी\r\n\r\n \r\n\r\nFor Garnish\r\n\r\nCoriander sprig, धनिया पत्ता\r\n\r\nGinger, julienned,अदरक\r\n\r\n', 'For Paste\r\n\r\nIn a bowl, add coriander leaves, green chili, ginger, garlic, white onions, salt to taste and oil.\r\nTransfer it into a grinder jar and grind into a smooth paste and keep it aside for further use.\r\n \r\n\r\nFor Curd Mixture\r\n\r\nIn a large mixing bowl, add curd and prepared paste.\r\nNow, add turmeric powder, coriander powder, cumin powder, garam masala and fenugreek leaves and mix it well.\r\n \r\n\r\nFor Marination\r\n\r\nFirstly make slits on both sides of chicken drumsticks and thighs using a sharp knife. The slits should not be too deep.\r\nNow, add half a quantity of prepared curd mixture and mix it well.\r\nLet it marinate for 25-30 minutes.\r\n \r\n\r\nFor Roasting Chicken\r\n\r\nHeat a pan on medium heat. When the pan becomes hot enough, add chicken pieces one by one. Add ghee.\r\nRoast the pieces well from one side till golden brown and flip them one by one and fry from the other side as well.\r\n \r\n\r\nFor Gravy\r\n\r\nIn a deep pot, add ghee, once it gets hot add bayleaf, cinnamon stick, green cardamom and let it splutter well.\r\nNow, add prepared curd mixture.\r\nLet the gravy cook on medium heat for about 7-8 minutes while stirring occasionally.\r\nNow, add roasted chicken and water.\r\nLet the chicken cook in the gravy on medium heat for about 10 minutes.\r\nTransfer it into a serving dish, garnish it with coriander sprig, ginger julienne and serve hot with roti', '2025-01-17 14:28:22', 'main course', 'afghani-chicken-curry-recipe.jpg', 0, 0, NULL),
(60, ' Chocolate Chip Cookies', 'These are THE BEST soft chocolate chip cookies! No chilling required. Just ultra thick, soft, classic chocolate chip cookies', '8 tablespoons of salted butter\r\n1/2 cup white sugar (I like to use raw cane sugar with a coarser texture)\r\n1/4 cup packed light brown sugar\r\n1 teaspoon vanilla\r\n1 egg\r\n1 1/2 cups all purpose flour (6.75 ounces)\r\n1/2 teaspoon baking soda\r\n1/4 teaspoon salt (but I always add a little extra)\r\n3/4 cup chocolate chips (I use a combination of chocolate chips and chocolate chunks)', 'Preheat the oven to 350 degrees. Microwave the butter for about 40 seconds to just barely melt it. It shouldn’t be hot – but it should be almost entirely in liquid form.\r\n\r\nUsing a stand mixer or electric beaters, beat the butter with the sugars until creamy. Add the vanilla and the egg; beat on low speed until just incorporated – 10-15 seconds or so (if you beat the egg for too long, the cookies will be stiff).\r\n\r\nAdd the flour, baking soda, and salt. Mix until crumbles form. Use your hands to press the crumbles together into a dough. It should form one large ball that is easy to handle (right at the stage between “wet” dough and “dry” dough). Add the chocolate chips and incorporate with your hands.\r\n\r\nRoll the dough into 12 large balls (or 9 for HUGELY awesome cookies) and place on a cookie sheet. Bake for 9-11 minutes until the cookies look puffy and dry and just barely golden. Warning, friends: DO NOT OVERBAKE. This advice is probably written on every cookie recipe everywhere, but this is essential for keeping the cookies soft. Take them out even if they look like they’re not done yet (see picture in the post). They’ll be pale and puffy.\r\nLet them cool on the pan for a good 30 minutes or so (I mean, okay, eat four or five but then let the rest of them cool). They will sink down and turn into these dense, buttery, soft cookies that are the best in all the land. These should stay soft for many days if kept in an airtight container. I also like to freeze them.', '2025-01-22 14:59:40', 'desserts', 'Chocolate-Chip-Cookies.jpg', 0, 0, 'https://youtu.be/uJwekkbGPns'),
(70, 'NOjito!', 'NO booze, no problem is the name of the game with our NO-jito! This mojito-inspired mocktail is light and refreshing and has all of the flavor and none of the alcohol.', '6 mint sprigs, divided, plus more for garnish\r\nIce\r\n6 oz. ginger ale\r\n1 oz. fresh lime juice \r\n1/2 oz. pure maple syrup\r\nLime wedges, for garnish', 'Step 1\r\nGently brush 1 mint sprig against top of a tall glass to release aromatics.\r\nStep 2\r\nPlace remaining 5 mint sprigs in bottom of prepared glass. Fill glass with ice. Add ginger ale, lime juice, and syrup. Gently stir until combined, about 5 seconds.\r\nStep 3\r\nTop off with ice. Garnish with mint sprigs and lime wedges.', '2025-01-22 16:00:21', 'drinks', 'nojito-lead-677711169ede5.avif', 0, 0, 'https://www.youtube.com/embed/6drZuef57lY'),
(71, 'Merry Mocktail', 'Everyone needs a good fancy fun mocktail in their life – especially during the holidays. Herby, zingy rosemary-infused simple syrup, sweet tart pomegranate juice, bubbly fizz, and fresh lime squeezes. Holiday magic!', 'Rosemary Simple Syrup\r\n\r\n4 cups water\r\n4 cups sugar\r\n(2) .5 oz packages fresh rosemary (basically, a nice big bunch of rosemary)\r\noptional: 4-5 whole cloves (a pinch of ground cloves works too)\r\nMerry Mocktail\r\n\r\n2–3 ounces rosemary simple syrup\r\n2–3 ounces pomegranate juice (cranberry juice is a good sub)\r\n2–3 ounces club soda (see note 1 for more ideas)', 'Heat the water, sugar, rosemary, and cloves in a saucepan over medium high heat. Bring to a low boil and let everything simmer for 5-10 minutes until the sugar has fully dissolved. Pour through a fine mesh strainer to remove the cloves and rogue rosemary leaves. Transfer to glass jars and store in the fridge for 2 weeks. (I often stick a sprig of rosemary in there so it keeps getting more intense.)\r\nPour your desired ratios of rosemary syrup, pomegranate juice, and club soda over an ice ball into a glass. Stir gently, taste and adjust, and enjoy. ', '2025-01-22 16:09:47', 'drinks', 'Merry-Mocktail-1-183x183.jpg', 0, 0, 'https://www.youtube.com/embed/no9HMu-xiDU'),
(73, 'Veg Kabab Recipe', 'Veg kabab is a tasty vegetarian starter recipe that can be made for a Diwali lunch or dinner menu.', '90 grams potatoes or 1 medium potato\r\n▢60 grams cauliflower about ¾ cup chopped cauliflower florets or 9 to 10 gobi florets\r\n▢65 grams carrots or 1 small to medium carrot\r\n▢70 grams white button mushrooms or 6 to 7 button mushrooms\r\n▢60 grams onion or 1 medium onion\r\n▢¼ cup green peas, fresh or frozen\r\n▢14 to 15 fresh mint leaves\r\n▢2 tablespoons chopped coriander leaves\r\n▢½ teaspoon Ginger Garlic Paste\r\n▢10 tablespoons besan or gram flour\r\n▢salt as required\r\nspice powders\r\n▢¼ teaspoon turmeric powder\r\n▢½ teaspoon red chilli powder\r\n▢½ teaspoon Garam Masala', 'preparing minced veggies for kabab\r\nRinse and dice or quarter the veggies. Take all of them in a food processor or food chopper or in a mixer or grinder jar. \r\nAlso add mint and coriander leaves.\r\nMake a fine mince of the veggies. If using a mixer or grinder jar, then use the pulse option for a few seconds or run the mixer for a few seconds. Then scrape the sides and again run the mixer for a few seconds. Again scrape and run the mixer for a few seconds, till the veggies are minced very well. Do not make a paste. \r\npreparing veg kabab mixture\r\nTake the minced veggies in a mixing bowl or pan.\r\nAdd ginger-garlic paste. Also add all the spices powders. \r\nMix very well and keep aside.\r\nThen heat a small pan and add 10 tablespoons besan in it.\r\nOn a low flame, stirring often roast the besan.\r\nRoast the besan till its color changes and it gives a good aroma.\r\nAdd the roasted besan to the minced veggie mixture.\r\nSeason with salt.\r\nMix very well. The kebab mixture is light and not heavy. \r\nNow take a small portion of the veg kebab mixture and shape into a ball. \r\nIf the mixture falls apart while shaping, then some more roasted besan needs to be added. Depending on the type of veggies used and their moisture content, you may need to add less or more besan. \r\nFlatten each ball and place them in a greased baking tray. Grease the tray very well with some oil.\r\nmethod 1 – baking veg kabab\r\nPlace the baking tray in a preheated oven at 180 degrees celsius. Preheat the oven for 15 minutes at 180 degrees celsius, before you place the kebab in it. \r\nOnce the veg kebab are half baked, then remove the tray from the oven. Brush the top of the kebab with some oil.\r\nKeep the tray back in the oven and continue to bake till the veg kabab are golden and slightly crisp.\r\nBaking time varies from oven to oven. So consider an average time of 20 to 35 minutes for baking. Wait for 1 to 2 minutes and then gently remove the kebab with a spatula. \r\nmethod 2 – frying veg kabab\r\nHeat 2 to 3 tablespoons oil in a pan. You can use any neutral flavored oil. Place the kebabs in the pan.\r\nPan fry the veg kabab on a low to medium flame. \r\nWhen one side is golden and browned, gently turn over and fry the second side. Flip once or twice and fry till the kebab are golden and crisp.\r\nPlace them on kitchen paper towels. In the same way, fry the remaining kebab in batches.\r\nServe mix veg kabab hot or warm with mint chutney, mint raita or tomato ketchup. ', '2025-01-22 16:16:50', 'starters', 'vegetable-kebab.jpg', 0, 0, 'https://www.youtube.com/embed/VKaeC25l3lE'),
(75, 'Onion Pakoda Recipe (Punjabi Style)', 'Onion Pakoda also called Onion Pakora is a deep fried snack made with plenty of thinly sliced onions, gram flour (besan), carom seeds and a few spices. This recipe is a classic Punjabi style version which is flavorful, tasty, crispy and tastes best with a side of coriander chutney, mint chutney or ketchup.', '2 onions – medium to large-sized\r\n▢1 cup gram flour (besan) or substitute with chickpea flour\r\n▢1 to 2 teaspoons green chillies – chopped (or add instead ½ teaspoon red chilli powder or cayenne pepper)\r\n▢1 to 2 tablespoons coriander leaves – chopped (cilantro), optional\r\n▢½ teaspoon Garam Masala – optional\r\n▢¼ teaspoon turmeric powder (ground turmeric), optional\r\n▢1 teaspoon carom seeds (ajwain)\r\n▢1 generous pinch asafoetida (hing) – optional or use gluten-free asafoetida\r\n▢1 pinch baking soda – optional\r\n▢water as needed to make a medium-thick batter\r\n▢salt as required\r\n▢oil as required – for shallow frying or deep frying. sunflower oil or any neutral flavored oil', 'Slice the onions thinly and take them in a mixing bowl. Also, add chopped green chillies. \r\nIf you do not have green chillies, then add red chilli powder. You can also add chopped coriander leaves or mint leaves if you prefer.\r\nAdd the spices – carom seeds, turmeric powder, asafoetida and salt.\r\nMix and marinate everything well. Cover and keep the onion, chillies and spice mixture aside for 15 to 20 minutes.\r\nMeanwhile, the onions would release water after resting the mixture for 15 to 20 minutes.\r\nMaking pakoda batter\r\nNext add gram flour (besan). If you plan to add baking soda, then add at this step.\r\nAdd the required amount of water to make a medium-thick batter. Ensure not to make a very thick batter or a thin runny batter.\r\nStir the whole mixture very well with a spoon or with your hands. The batter is ready to be fried.\r\nMake sure there are no lumps of flour in the batter.\r\nMaking onion pakoda\r\nHeat oil for deep frying or shallow frying in a wok (kadai) or pan. Let the oil become moderately hot.\r\nIn hot oil, then add spoonfuls of the batter.\r\nDepending on the size of the wok or pan, you can add less or more. Just make sure you don\'t over crowd the pan while frying.\r\nWhen the pakora are cooked and the batter has firmed up or has become light golden, turn over with a slotted spoon and continue to fry.\r\nYou will have to turn them a few times for even frying.\r\nFry them until they look crisp and golden.\r\nRemove with a slotted spoon and drain on kitchen paper towels for excess oil to be absorbed.\r\nIn the same oil fry slit green chilies.\r\nSprinkle some salt on the green chilies and mix well.\r\nServe Onion Pakoda with the fried green chilies or coriander chutney or tomato ketchup.', '2025-01-22 16:20:17', 'starters', 'onion-pakoda-2-500x500.jpg', 0, 0, 'https://www.youtube.com/embed/Pr5i9K6I5bs'),
(76, 'Qubani Ka Meetha (Apricot Dessert)', 'Qubani ka Meetha also known as Khubani ka meetha is a popular sweet dish from Hyderabadi cuisine. This tangy sweet dessert is made from dried apricots, sugar and nuts having a compote like jammy consistency.\r\n', '25 to 28 dried apricots (khubani)\r\n▢1 to 1.5 cup strained water from the soaked apricots\r\n▢2 to 3 teaspoon sugar as required (optional)\r\n▢sliced almonds – optional', 'Rinse the apricots well in fresh water.\r\nThen soak them overnight in 2 to 2.5 cups water or 4 to 5 hours in warm water.\r\nRemove the apricots the next day and keep the water aside as we will be using it later.\r\nPress the softened apricots with your fingers and remove the seeds. You can also chop them if you prefer. Keep the hard kernels aside and break the kernels with a pestle or nutcracker.\r\nThrow away the hard covering and keep the almond like nuts aside.\r\nMaking Khubani ka Meetha\r\nAdd one cup of the strained water in the frying pan along with the chopped apricots.\r\nYou can also just mash the apricots with your hands and then add them to the pan.\r\nCook on a low flame for 22 to 25 minutes stirring occasionally. While cooking mash the apricots with a spoon.\r\nIf the mixture looks dry, add some of the reserved strained water.\r\nNow add sugar according to taste and cook for 5 to 6 minutes more.\r\nLastly add the almond like seeds of the apricots.\r\nMix and stir and then serve khubani ka meetha hot or warm or cold.\r\nServing Suggestions\r\nFor the best taste and flavor, serve this sweet dish hot or warm.\r\nFor a richer experience, you can opt to serve it with malai (clotted cream), whipped cream, custard, ice cream, gulab jamun or rabdi.', '2025-01-22 16:22:43', 'desserts', 'khubani-ka-meetha-1a-500x500.jpg', 0, 0, 'https://www.youtube.com/embed/v3dr18S4enY');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`) VALUES
(7, 'zeenat', 'szeenat1786@gmail.com', '$2y$10$vZqPfH0znxMfSbY4Qk/.dud.PAa2W04RxdjrzUZ4oPGV4AWO2BM/6', '2024-09-16 08:08:13'),
(10, 'rutuja', 'rutuja123@gmail.com', '$2y$10$CRuQPpCkA.67UDrAlkyO3Of8sU9UnuCgjzPaSVhqSM89bJhv1dnJi', '2024-09-17 17:55:24'),
(11, 'hasib', 'hasib123@gmail.com', '$2y$10$UvQqWVeHspw0mUo/zEbn3eU/XH9EI9KJUENFvjYrGf9d29J94gVQe', '2024-09-19 06:53:20'),
(12, 'arshad', 'arshad123@gmail.com', '$2y$10$exSmlx6RpYKVjeDVaHC3h.067e46vyChuAIqkCabwdrt7rd0Q9JGm', '2024-09-19 08:37:44'),
(14, 'kadir', 'kadirshaikh860@gmail.com', '$2y$10$lyRC/p1ToAs1MAy192mWfOA64TOjRk1tcYJXH1F4ctf7Lviv2WqMu', '2024-09-19 11:10:15'),
(18, 'sufiyan', 'sufiy123@gmail.com', '$2y$10$962IqzHHMBY0dbCfsN3ZtOQO0NJUehuhPn8s4Xns2yIdfjWFUQTpS', '2024-09-19 11:21:58'),
(20, 'ainaz', 'ainazshaikh123@gmail.com', '$2y$10$X1btV1XtehIJpSqBzB3y6.0HAcrJ08PiTOXd0vUIZmkp55fp7E0pS', '2024-09-21 05:34:22'),
(25, 'zubiya', 'zubiyashaikh123@gmail.com', '$2y$10$gakxhmwZMNhBuq/oTuXcNe.jOJyYe.IJ/HWYU7VzCD/8FQbIgybPu', '2024-09-21 05:39:21'),
(35, 'abrar', 'abrarshaikh123@gmail.com', '$2y$10$EDIoCkGp0ucZ9OtEy/4QMOTftZ0NtqWneERwSMjnDNWFmdlJY/r0y', '2024-09-21 06:37:33'),
(37, 'niza', 'sniza02@gmail.com', '$2y$10$c3qq35CynFc0/gGtZdPZcOnbFzPf92VhvoO0Y5G3eXbnsuoBAtOny', '2024-09-30 10:46:25'),
(38, 'parveen', 'parveen123@gmail.com', '$2y$10$i/VhOfoiWzZ5fFxF0g5xpuuVEQV2UDocDVgRd6awvlIhOy/XnFF16', '2025-01-21 07:32:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
