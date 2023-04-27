//Home Screen Data

import 'package:donut_delivery/data/models/store_item.dart';

List<Map<String, dynamic>> vendorList = const [
  {
    "imagePath": "assets/images/logo/gladis_logo.jpg",
    "name": "Gladis Baker",
    "rating": 4.2,
  },
  {
    "imagePath": "assets/images/logo/tasties_logo.jpg",
    "name": "Tasties by tina",
    "rating": 4.5,
  },
  {
    "imagePath": "assets/images/logo/donut2_logo.jpg",
    "name": "New York Donut.",
    "rating": 4.2,
  },
  {
    "imagePath": "assets/images/logo/sweet-shop-logo.jpg",
    "name": "Sweets Shop.",
    "rating": 4.0,
  },
  {
    "imagePath": "assets/images/logo/leliuious_logo.jpg",
    "name": "Leliuious.",
    "rating": 4.3,
  },
  {
    "imagePath": "assets/images/logo/monginis-logo.png",
    "name": "Monginis",
    "rating": 3.8,
  },
  {
    "imagePath": "assets/images/logo/lila_logo.png",
    "name": "Lial Manila Sweets",
    "rating": 4.2,
  },
];

const categories = [
  {"imgPath": "", "title": "All"},
  {"imgPath": "", "title": "Burger"},
  {"imgPath": "", "title": "Pizzq"},
  {"imgPath": "", "title": "Desert"}
];

//Vendor Screen
List<Map<String, dynamic>> productList = const [
  {
    "title": "Honey Milk Donut",
    "detail": "Honey + sugar + flawour + some ingrident ...",
    "imagePath": "assets/donut_7.png",
  },
  {
    "title": "Raspberry Donut",
    "detail": "Raspberry + sugar + flawour ",
    "imagePath": "assets/donut_2.png",
  },
  {
    "title": "Chocolate Donut",
    "detail": "Chocolate + sugar + flawour + some ingrident ...",
    "imagePath": "assets/donut_3.png",
  },
  {
    "title": "Blueberry Donut",
    "detail": "Blueberry + sugar + flawour + some ingrident ...",
    "imagePath": "assets/donut_4.png",
  },
  {
    "title": "Sugary Heaven",
    "detail": " Sugar + flawour + some ingrident ...",
    "imagePath": "assets/donut_5.png",
  },
  {
    "title": "Juicy Donut",
    "detail": "Juicy + sugar + flawour + some ingrident ...",
    "imagePath": "assets/donut_6.png",
  },
];

List<String> categoryIconList = [
  "assets/cloche.riv",
  "assets/burger.riv",
  "assets/pizza.riv",
  "assets/donut.riv",
  "assets/images/cloche.png",
  "assets/images/burger.png",
  "assets/images/pizza-slice.png",
  "assets/images/donut.png",
];

List<String> name = [
  'Cloche',
  'Burgers',
  'Pizza',
  'Dessert',
  'All',
  'Burgers',
  'Pizza',
  'Dessert',
];

final items = [
  [
    StoreItemModel(
        rating: "4,2",
        title: "Glodous amoli",
        imgUrl: "assets/donut_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,5",
        title: "Sweets Shop.",
        imgUrl: "assets/tasties_item.jpg",
        pricing: '\$2.5'),
  ],
  [
    StoreItemModel(
        rating: "4,2",
        title: "Glodous amoli",
        imgUrl: "assets/donut_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,5",
        title: "Sweets Shop.",
        imgUrl: "assets/tasties_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
  ],
  [
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,2",
        title: "Glodous amoli",
        imgUrl: "assets/donut_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,5",
        title: "Sweets Shop.",
        imgUrl: "assets/tasties_item.jpg",
        pricing: '\$2.5'),
  ],
  [
    StoreItemModel(
        rating: "4,5",
        title: "Sweets Shop.",
        imgUrl: "assets/tasties_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,2",
        title: "Glodous amoli",
        imgUrl: "assets/donut_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
    StoreItemModel(
        rating: "4,9",
        title: "Tasties by tina",
        imgUrl: "assets/gladis_item.jpg",
        pricing: '\$2.5'),
  ]
];
