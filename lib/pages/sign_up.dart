import 'package:flutter/material.dart';
import '../shared/theme.dart';

// class SignUp extends StatelessWidget {
//   const SignUp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Join us and get\nyour next journey",
//               style:
//                   blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
//             ),
//             Container(
//               height: 533,
//               width: 327,
//               decoration: BoxDecoration(
//                 color: kWhiteColor, // Background color of the Container
//                 borderRadius:
//                     BorderRadius.circular(18), // Adjust the radius as needed
//               ),
//               padding: const EdgeInsets.only(
//                   right: 20, left: 20, top: 30, bottom: 30),
//               margin: const EdgeInsets.only(top: 48),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "fullname",
//                         textAlign: TextAlign.end,
//                         style: blackTextStyle.copyWith(
//                             fontSize: 14, fontWeight: regular),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: kPrimaryColor),
//                               borderRadius: BorderRadius.circular(17)),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(17)),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Email Address",
//                         textAlign: TextAlign.end,
//                         style: blackTextStyle.copyWith(
//                             fontSize: 14, fontWeight: regular),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: kPrimaryColor),
//                               borderRadius: BorderRadius.circular(17)),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(17)),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Password",
//                         textAlign: TextAlign.end,
//                         style: blackTextStyle.copyWith(
//                             fontSize: 14, fontWeight: regular),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: kPrimaryColor),
//                               borderRadius: BorderRadius.circular(17)),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(17)),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Hobby",
//                         textAlign: TextAlign.end,
//                         style: blackTextStyle.copyWith(
//                             fontSize: 14, fontWeight: regular),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: kPrimaryColor),
//                               borderRadius: BorderRadius.circular(17)),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(17)),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     height: 55,
//                     width: 287,
//                     child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom(
//                             backgroundColor: kPrimaryColor,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(17))),
//                         child: Text(
//                           "Get started",
//                           style: whiteTextStyle.copyWith(
//                               fontSize: 18, fontWeight: medium),
//                         )),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleScreen() {
      return Container(
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget input() {
      Widget field() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(defaultRadius))),
            )
          ],
        );
      }

      return Container(
        height: 533,
        width: 237,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            field(),
            field(),
            field(),
            field(),
            Container(
              width: 287,
              height: 55,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(defaultRadius))),
                  child: Text(
                    "Sign Up",
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [titleScreen(), input()],
          ),
        ));
  }
}
