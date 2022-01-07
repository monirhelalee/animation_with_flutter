import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          excludeHeaderSemantics: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: h * .45,
              color: Colors.yellow,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("sub Title"),
                        ],
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                  "Maxime mollitia, molestiae quas vel sint commodi repudiandae"
                  " consequuntur voluptatum laborum numquam blanditiis harum quisquam eius "
                  "sed odit fugiat iusto fuga praesentium optio, eaque rerum!"
                  " Provident similique accusantium nemo autem. "
                  "Veritatis obcaecati tenetur iure eius earum ut molestias"
                  " architecto voluptate aliquam nihil, eveniet aliquid "
                  "culpa officia aut! Impedit sit sunt quaerat, odit, tenetur "
                  "Maxime mollitia, molestiae quas vel sint commodi repudiandae"
                  " architecto voluptate aliquam nihil, eveniet aliquid "
                  "culpa officia aut! Impedit sit sunt quaerat, odit, tenetur "
                  "error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit."),
            )
          ],
        ),
      ),
    );
  }
}
