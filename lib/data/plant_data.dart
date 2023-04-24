import 'package:ui_13/data/plant_model.dart';

List<Plants> plants = [
  Plants(
    healthbenefit: "",
    watering: "xbccbbbd cdcb",
    pestcontrol: "gsgsg",
    fertilise: "",
    transplant: "",
    id: 0,
    name: 'Tomato',
    imagePath: 'assets/images/tomato.jpg',
    category: 'Garden',
    description:
        "Tomatoes are the major dietary source of the antioxidant lycopene, which has been linked to many health benefits, including reduced risk of heart disease and cancer .",
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    healthbenefit:
        "Green beans are a low-calorie food that is rich in essential nutrients that offer numerous health "
        "advantages. For instance, they can improve cardiovascular health by reducing levels of LDL "
        "cholesterol and promote bone health through their vitamin K and calcium content.",
    fertilise:
        "Green beans do not require a large amount of nutrients, but a light application of fertilizer can"
        "enhance crop production. It is advisable to apply fertilizer to the soil before planting the seeds and "
        "mix it into the top 3-4 inches of soil using a shovel or trowel. Unlike other garden crops, green "
        "beans can produce nitrogen, so there is no need for a high-nitrogen fertilizer. Instead, use a low nitrogen fertilizer or non-chemical organic fertilizers such as compost, bone meal, or well-rotted manure.",
    pestcontrol:
        "Bean pests can usually be controlled through natural means and seldom require the use of "
        "pesticides. Some common pests that can infest green beans include aphids, thrips, beetles, and "
        "caterpillars. To control pests on green beans organically, you can encourage beneficial insects in"
        "your garden that prey on the bugs that damage green bean plants. You can also use physical controls"
        "such as row covers and organic pesticides like neem oil. Regular monitoring of your garden is also "
        "important to detect pests before infestations become unmanageable",
    transplant:
        "Green beans are usually sown directly into the soil rather than being started in seed-starter trays "
        "because they do not transplant well. With their high germination rate, it is best to plant them in "
        "moist soil once the ground has warmed up in the spring. If you choose to grow green beans in pots, "
        "there is no need to transplant them. Simply add compost or potting mix to your planter, about 1/4 "
        "inch deep, and water the green beans for 15-30 seconds after applying fertilizer.",
    watering:
        "Green beans need approximately 1/2 inch of water weekly to flourish and yield high-quality beans. "
        "It is crucial to water the roots and avoid wetting the plant's tops. Watering should be done early in "
        "the morning. If there is no rainfall, a weekly deep soak will suffice. Drip irrigation systems are an "
        "effective way to water green beans as they deliver water straight to the roots, allowing for "
        "maximum moisture absorption. This method is more efficient than overhead watering and can help"
        "prevent mildew from forming on the leaves and pods. Aeroponically grown green beans can also "
        "produce a bountiful harvest, but the vines may grow excessively. Monoculture is recommended "
        "when growing beans aeroponically on a tower. Fogponics is an aeroponic technique.",
    id: 1,
    name: 'Green beans',
    imagePath: 'assets/images/tomato.jpg',
    category: 'Garden',
    description:
        "Green beans are the immature fruit of the common bean plant and are typically green in color. They "
        "are packed with nutrients such as vitamins, folic acid, fiber, and protein. These beans are also "
        "referred to as snap beans, string beans, French beans or Baguio beans. They can be enjoyed either "
        "raw or cooked in a variety of ways. '",
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    healthbenefit: "",
    id: 2,
    fertilise: "",
    pestcontrol: "",
    transplant: "",
    watering: "",
    name: 'Ficus retusa',
    imagePath: 'assets/images/image3.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 60.00,
    isFavorit: false,
  ),
  Plants(
    healthbenefit: "",
    fertilise: "",
    pestcontrol: "",
    transplant: "",
    watering: "",
    id: 3,
    name: 'Ficus retusa',
    imagePath: 'assets/images/image5.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 90.00,
    isFavorit: false,
  ),
];

List<Map> wateringTechnique = [
  {
    'title': 'Irrigation',
    'description': '',
    'advantages': [],
    'disadvantages': []
  },
  {
    'title': 'Hydroponics',
    'description': '',
    'advantages': [],
    'disadvantages': []
  },
  {
    'title': 'Aeroponics',
    'description': "Aeroponics is the process of growing plants in an air or mist environment without soil or an"
        "aggregate medium. The word aeroponic is derived from the Greek meanings of aer  and "
        "ponos . It is a subset of hydroponics, since water is used in aeroponics to transmit "
        "nutrients . Aeroponic systems use water, liquid nutrients and a soilless growing medium to quickly"
        "and efficiently grow more colorful, tastier, better smelling and incredibly nutritious produce .',",
    'advantages': [],
    'disadvantages': []
  },
  {
    'title': 'Fogponics',
    'description': '',
    'advantages': [],
    'disadvantages': []
  },
];

List<Plants> populerPlants = [
  Plants(
    healthbenefit: "",
    fertilise: "",
    pestcontrol: "",
    transplant: "",
    watering: "",
    id: 0,
    name: 'Aeroponics',
    imagePath: 'assets/images/onions.png',
    category: 'Outdoor',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    healthbenefit: "",
    fertilise: "",
    pestcontrol: "",
    transplant: "",
    watering: "",
    id: 1,
    name: 'Hydroponics',
    imagePath: 'assets/images/cucumber.jpg',
    category: 'Outdoor',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    healthbenefit: "",
    fertilise: "",
    pestcontrol: "",
    transplant: "",
    watering: "",
    id: 1,
    name: 'Fogponics',
    imagePath: 'assets/images/cucumber.jpg',
    category: 'Outdoor',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    healthbenefit: "",
    fertilise: "",
    pestcontrol: "",
    transplant: "",
    watering: "",
    id: 1,
    name: 'flood irrigation',
    imagePath: 'assets/images/cucumber.jpg',
    category: 'Outdoor',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
];
