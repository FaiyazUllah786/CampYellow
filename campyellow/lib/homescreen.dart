import 'package:campyellow/widget/imagehelper.dart';
import 'package:flutter/material.dart';
import '';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            //headline
            Text(
              "Camp Yellow",
              style: TextStyle(
                fontSize: size.width * 0.11,
              ),
            ),
            Text(
              "practice.learn.compete",
              style: TextStyle(
                fontSize: size.width * 0.05,
              ),
            ),
            Spacer(),
            //image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageHelper(image: "assets/images/image1.png"),
                SizedBox(width: size.width * 0.10),
                ImageHelper(image: "assets/images/image3.png"),
              ],
            ),
            SizedBox(
              height: size.width * 0.10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageHelper(image: "assets/images/image2.png"),
                SizedBox(width: size.width * 0.10),
                ImageHelper(image: "assets/images/image4.png"),
              ],
            ),
            Spacer(),
            //search box

            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.07,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: .7, color: Colors.grey.shade300)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "search events by area",
                  hintStyle: TextStyle(
                    fontSize: size.width * 0.05,
                    color: Colors.grey.shade400,
                  ),
                  suffixIcon: Icon(
                    Icons.search_sharp,
                    size: size.width * 0.10,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            Spacer(),
            //login button
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: size.width * 0.08,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(size.width * 0.50, size.height * 0.07)),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
