import 'package:flutter/material.dart';
import 'package:testapp/constant.dart';

class DetailsList extends StatefulWidget {
  final int index;
  final String image, name, time, level;
  DetailsList(this.index, this.image, this.name, this.time, this.level);

  @override
  State<DetailsList> createState() => _DetailsListState();
}

class _DetailsListState extends State<DetailsList> {
  void initState() {
    super.initState();
    print(
        "index: ${widget.index},image: ${widget.image},name: ${widget.name},time: ${widget.time},level: ${widget.level}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 64.0, bottom: 0.0, left: 32.0, right: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: klightGreyColor,
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.0,
                      color: kDarkGreyFontColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print("fav"),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: kLightRedColor,
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Icon(
                      Icons.favorite,
                      size: 24.0,
                      color: kRedColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(children: [
            Hero(
              tag: "tag${widget.index}",
              child: Image.asset(
                widget.image,
                height: 200,
                width: 200,
                fit: BoxFit.contain,
              ),
            ),
            // Container(
            //   height: 400.0, //comment it then
            //   margin: EdgeInsets.only(top: 28.0),
            //   padding: EdgeInsets.symmetric(vertical: 28.0),
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //     color: klightGreyColor,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(50.0),
            //       topRight: Radius.circular(50.0),
            //     ),
            //   ),
            //   child: Column(
            //     children: [
            //       Container(
            //         height: 2.0,
            //         width: 28.0,
            //         margin: EdgeInsets.only(bottom: 32.0),
            //         decoration: BoxDecoration(
            //             color: kDarkGreyFontColor,
            //             borderRadius: BorderRadius.circular(20.0)),
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width / 2,
            //         child: Text(
            //           widget.name,
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //               fontSize: 28.0,
            //               color: kLightFontColor,
            //               fontWeight: FontWeight.w700),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ]),
        ],
      ),
    );
  }
}
