
// import 'package:flutter/material.dart';

// import 'package:e_commerce/customer/screens/home_screen.dart';
// import 'package:e_commerce/data/slider_model.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {

//   List<SliderModel> slides = List<SliderModel>();
//   int currentIndex = 0;
//   late PageController _controller;
 
//   @override
//   void initState() {
 
//     super.initState();
//     _controller = PageController(initialPage: 0);
//     slides = getSlides();
//   }

//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Geeks for Geeks'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//                 scrollDirection: Axis.horizontal,
//                 controller: _controller,
//                 onPageChanged: (value){
//                   setState(() {
//                     currentIndex = value;
//                   });
//                 },
//                 itemCount: slides.length,
//                 itemBuilder: (context, index){
 
//                   // contents of slider
//                   return Slider(
//                     image: slides[index].getImage(),
                
//                   );
//                 },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(slides.length, (index) => buildDot(index, context),
//             ),
//           ),
//           Container(
//             height: 60,
//             margin: const EdgeInsets.all(40),
//             width: double.infinity,
//             color: Colors.green,
//             child: ElevatedButton(
//               onPressed: (){
//                 if(currentIndex == slides.length - 1){
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
//                 }
//                 _controller.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
//               },
//               // shape: RoundedRectangleBorder(
//               //   borderRadius: BorderRadius.circular(25),
//               // ),
//               child: Text(
//                 currentIndex == slides.length - 1 ? 'Continue': 'Next',
//                 style: const TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
 
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//     );
//   }
 
//   // container created for dots
//   Container buildDot(int index, BuildContext context){
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: const EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.green,
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class Slider extends StatelessWidget {

//   String image;
 
//   Slider({
//     super.key, 
//     required this.image,
//   });
 
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
 
//       // contains container
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // image given in slider
//           Image(image: AssetImage(image)),
//           const SizedBox(height: 25),
//         ],
//       ),
//     );
//   }
// }
