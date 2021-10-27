// part of admin_cabinet_list;

// class TopFloatSearch extends StatelessWidget {
//   TopFloatSearch({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final ctrl = Get.find<AdminCabinetListController>();
//     final isPortrait =
//         MediaQuery.of(context).orientation == Orientation.portrait;
//     return Container(
//       width: Get.width,
//       child: FloatingSearchBar(
//         hint: '输入电柜名/电柜ID/电柜地址搜索',
//         automaticallyImplyBackButton: true,
//         scrollPadding: EdgeInsets.only(top: 16, bottom: 56),
//         transitionDuration: Duration(milliseconds: 800),
//         transitionCurve: Curves.easeInOut,
//         physics: BouncingScrollPhysics(),
//         axisAlignment: isPortrait ? 0.0 : -1.0,
//         openAxisAlignment: 0.0,
//         debounceDelay: Duration(milliseconds: 500),
//         transition: CircularFloatingSearchBarTransition(),
//         actions: [
//           FloatingSearchBarAction(
//             showIfOpened: false,
//             child: Padding(
//               padding: EdgeInsets.only(right: 15.w),
//               child: Image(
//                 width: 35.w,
//                 height: 35.w,
//                 image: AssetImage("images/admin_scan_icon.png"),
//               ),
//             ),
//           ),
//           FloatingSearchBarAction.searchToClear(
//             showIfClosed: false,
//           ),
//         ],
//         builder: (context, transition) {
//           return ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Material(
//               color: Colors.white,
//               elevation: 4.0,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: Colors.accents.map((color) {
//                   return Container(height: 112, color: color);
//                 }).toList(),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


// // Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Container(
// //             padding: EdgeInsets.only(left: 40.w, top: 8.h),
// //             width: 598.w,
// //             height: 80.h,
// //             child: TextField(
// //               controller: ctrl.searchController,
// //               decoration: InputDecoration(
// //                 contentPadding: EdgeInsets.only(
// //                   left: 20.w,
// //                 ),
// //                 filled: true,
// //                 fillColor: Colours.app_search_grey,
// //                 hintText: "输入电柜名/电柜ID/电柜地址搜索",
// //                 prefixIcon: Icon(
// //                   Icons.search,
// //                 ),
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                   borderSide: BorderSide.none,
// //                 ),
// //                 hintStyle: TextStyle(
// //                   color: Colours.app_font_grey,
// //                 ),
// //               ),
// //               onChanged: (String text) {},
// //             ),
// //           ),
// //           Image(
// //             width: 40.w,
// //             height: 40.w,
// //             image: AssetImage("images/admin_scan_icon.png"),
// //           )
// //         ],
// //       )