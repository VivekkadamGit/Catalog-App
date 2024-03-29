import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';

import '../widgets/home_widgets/add_to_cart.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(backgroundColor: Colors.transparent), //app bar
      bottomNavigationBar: Container(
        // bottom price indicat
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment
              .spaceBetween, //spaceBetween will make item to set at corner of page
          buttonPadding: Vx.mH8, //! ??
          children: [
            "\$${catalog.price}".text.xl4.red700.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50) // width and height
          ],
        ).p24(),
      ),
      body: SafeArea(
        child: Column(children: [
          Hero(
                  // Hero used for animation here
                  //Hero Required tag ...which contyails key!
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image).centered().expand())
              .h32(context), // height 32

          //Space below Image
          Expanded(
              child: VxArc(
            // * For Curve...
            height: 30.0,
            arcType: VxArcType
                .CONVEY, // conve"y" for "U" drop and Conve"X" for reverse "U"
            edge: VxEdge.TOP, // curve will be on top
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl4.bold //widget to use text as widget...
                      .color(context.accentColor)
                      .make()
                      .py(38), //padding only on Y axis 38
                  catalog.desc.text.xl.make(),
                  10.heightBox, //for blank space..

                  // scrollable Desc now
                  Expanded(
                    child: SingleChildScrollView(
                      child:
                          "Eos lorem magna lorem voluptua vero sanctus et dolores sit, et sea at consetetur sit sadipscing. Sed et magna magna stet aliquyam est invidunt nonumy. Dolor nonumy elitr et erat sea erat sed. Lorem gubergren ea nonumy sed. Ea ut nonumy sadipscing ipsum ut. Takimata sit duo eirmod dolore consetetur, ipsum ut et rebum amet, duo labore accusam amet rebum lorem erat. Accusam consetetur est et labore lorem et sit labore stet, lorem dolores sed dolore ut aliquyam lorem diam.."
                              .text
                              .make()
                              .p16(),
                    ),
                  )
                ],
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
// import 'package:art_sweetalert/art_sweetalert.dart';
//  onTap: () {
//                   ArtSweetAlert.show(
//                       context: context,
//                       artDialogArgs: ArtDialogArgs(
//                           title: "A question?",
//                           type: ArtSweetAlertType.question,
//                           text: "Show a question message with an icon"));
// showDialog(
//   context: context,
//   builder: (BuildContext context) => AlertDialog(
//     title: const Text('AlertDialog Title'),
//     content: const Text('AlertDialog description'),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () => Navigator.pop(context, 'Cancel'),
//         child: const Text('Cancel'),
//       ),
//       TextButton(
//         onPressed: () => Navigator.pop(context, 'OK'),
//         child: const Text('OK'),
//       ),
//     ],
//   ),
// );
