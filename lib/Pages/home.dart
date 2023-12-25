import 'package:flutter/material.dart';
import 'package:testapp/Pages/details.dart';
import 'package:testapp/Pages/drawer.dart';
import 'package:testapp/constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  int currentIndex = 0;
  var itemList = [];
  List categoryList = [
    {
      "image": "Assets/Images/burger.png",
      "name": "Dinner",
    },
    {
      "image": "Assets/Images/spaget.png",
      "name": "Drinks",
    },
    {
      "image": "Assets/Images/cupcake.png",
      "name": "Snack",
    },
    {
      "image": "Assets/Images/burger.png",
      "name": "Lunch",
    }
  ];
  List dinnerList = [
    {
      "image": "Assets/Images/food.png",
      "name": "Item1",
      "time": "60",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/food1.png",
      "name": "Item2",
      "time": "50",
      "level": "Easy",
    },
    {
      "image": "Assets/Images/food2.png",
      "name": "Item3",
      "time": "40",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/food3.png",
      "name": "Item4",
      "time": "60",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/food3.png",
      "name": "Item5",
      "time": "60",
      "level": "Easy",
    },
  ];
   List drinksList = [
    {
      "image": "Assets/Images/juice3.png",
      "name": "Item1",
      "time": "60",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/coca.png",
      "name": "Item2",
      "time": "50",
      "level": "Easy",
    },
    {
      "image": "Assets/Images/juice.png",
      "name": "Item3",
      "time": "40",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/juice2.png",
      "name": "Item4",
      "time": "60",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/coca.png",
      "name": "Item5",
      "time": "60",
      "level": "Easy",
    },
  ];
  List snacksList = [
    {
      "image": "Assets/Images/samosa.png",
      "name": "Item1",
      "time": "60",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/popcorn.png",
      "name": "Item2",
      "time": "50",
      "level": "Easy",
    },
    {
      "image": "Assets/Images/fries.png",
      "name": "Item3",
      "time": "40",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/cookies.png",
      "name": "Item4",
      "time": "60",
      "level": "Hard",
    },
    {
      "image": "Assets/Images/samosa.png",
      "name": "Item5",
      "time": "60",
      "level": "Easy",
    },
    {
      "image": "Assets/Images/pchips.png",
      "name": "Item5",
      "time": "60",
      "level": "Easy",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      drawer: FDrawer(),
      appBar: AppBar(
        backgroundColor: kDarkGreyColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 0.0, left: 32.0, right: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    width: 250.0,
                    child: TextFormField(
                      style: TextStyle(color: kLightFontColor),
                      decoration: InputDecoration(
                          fillColor: kPrimaryColor,
                          prefixIcon: Icon(
                            Icons.search,
                            color: kPrimaryColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide:
                                  const BorderSide(color: kPrimaryColor)),
                          hintText: 'Search here',
                          hintStyle: TextStyle(color: kLightFontColor)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        ClipOval(
                          child: Material(
                            child: Ink(
                              child: Image.asset(
                                "Assets/Images/name2.png",
                                fit: BoxFit.cover,
                                width: 48,
                                height: 48,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -5.0,
                          right: -2.0,
                          child: Container(
                            height: 11.0,
                            width: 11.0,
                            decoration: BoxDecoration(
                                color: kRedColor,
                                borderRadius: BorderRadius.circular(17.0),
                                border: Border.all(
                                  width: 1.0,
                                  color: kLightFontColor,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 32.0, top: 32.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meal Category',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: kLightFontColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: kDarkGreyColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Row(
                  children: List.generate(
                    categoryList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          currentIndex = index;
                        }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            // margin: EdgeInsets.symmetric(
                            //   vertical: 16.0,
                            // ),
                            decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? kPrimaryColor
                                    : klightGreyColor,
                                borderRadius: BorderRadius.circular(18.0),
                                border: Border.all(
                                    width: 4.0,
                                    color: currentIndex == index
                                        ? kAccentColor
                                        : kDarkGreyColor)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  padding: EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                      color: currentIndex == index
                                          ? kAccentColor
                                          : kDarkGreyColor,
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Image.asset(
                                    categoryList[index]["image"],
                                    height: 36.0,
                                    width: 36.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    categoryList[index]["name"],
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w800,
                                        color: currentIndex == index
                                            ? kDarkColor
                                            : kDarkGreyColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            buildItems(),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() => Container(
      color: kDarkGreyFontColor,
      height: 24,
      width: 2.0,
      child: VerticalDivider());

  Widget buildItems() {
    if(currentIndex == 0){
      setState(() {
        itemList = dinnerList;
      });
      
    }else if(currentIndex == 1){
      setState(() {
        itemList = drinksList;
      });
      
    }
    else if(currentIndex == 2){
      setState(() {
        itemList = snacksList;
      });
      
    }
    return Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
                right: 16.0,
              ),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 75.0,
                    crossAxisSpacing: 0.0,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 32.0),
                  shrinkWrap: true,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsList(
                            index,
                            itemList[index]["image"],
                            itemList[index]["name"],
                            itemList[index]["time"],
                            itemList[index]["level"],
                          ),
                        ),
                      ),
                      child: Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 200.0,
                            width: 170.0,
                            padding: EdgeInsets.only(bottom: 24.0),
                            decoration: BoxDecoration(
                              color: klightGreyColor,
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    itemList[index]["name"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: kLightFontColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '${itemList[index]["time"]} \n min',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                          color: kLightFontColor),
                                    ),
                                    buildDivider(),
                                    Text(
                                      '${itemList[index]["level"]} \n lvl',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                          color: kLightFontColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            height: 120.0,
                            top: -10.0,
                            child: Hero(
                              tag: "tag$index",
                              child: Image.asset(
                                itemList[index]["image"],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            );
  }
    
  
}
