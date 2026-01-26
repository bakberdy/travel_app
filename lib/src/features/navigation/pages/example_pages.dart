// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:social_media/src/core/monitoring/logger.dart';
// import 'package:social_media/src/core/utils/extensions/context_extensions.dart';
// import 'package:social_media/src/features/navigation/providers/scroll_to_top_provider.dart';

// @RoutePage()
// class ExamplePage1 extends StatefulWidget {
//   const ExamplePage1({super.key});

//   @override
//   State<ExamplePage1> createState() => _ExamplePage1State();
// }

// class _ExamplePage1State extends State<ExamplePage1> {
//   final ScrollController _scrollController = ScrollController();

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     final provider = ScrollToTopProvider.of(context);
//     provider?.onRegisterCallback(_scrollToTop);
//   }

//   void _onSearchStateChanged() {
//     if (_isSearching.value && _scrollController.hasClients) {
//       // Collapse app bar when search activates
//       _scrollController.animateTo(
//         200.0, // expandedHeight value
//         duration: const Duration(milliseconds: 200),
//         curve: Curves.easeOut,
//       );
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _isSearching.addListener(_onSearchStateChanged);
//   }

//   void _scrollToTop() {
//     Logger.info('Scrolling to top ${widget.runtimeType}');
//     if (_scrollController.hasClients) {
//       _scrollController.animateTo(
//         0,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   final ValueNotifier<bool> _isSearching = ValueNotifier(false);

//   @override
//   Widget build(BuildContext context) {
//     Logger.info('Building ${widget.runtimeType}');
//     final child = CustomScrollView(
//         controller: _scrollController,
//         slivers: [
//           // ValueListenableBuilder(
//           //   valueListenable: _isSearching,
//           //   builder: (context, value, child) {
//           //     return SliverAppBar(
//           //       expandedHeight: value ? 0 : 200.0,
//           //       flexibleSpace: AnimatedSwitcher(
//           //         duration: const Duration(milliseconds: 300),
//           //         child: value
//           //             ? null
//           //             : FlexibleSpaceBar(
//           //                 title: AnimatedSwitcher(
//           //                   duration: const Duration(milliseconds: 300),
//           //                   child: const Text(
//           //                     'SliverAppBar',
//           //                     style: TextStyle(
//           //                       fontSize: 18.0,
//           //                       fontWeight: FontWeight.bold,
//           //                       color: Colors.white,
//           //                       letterSpacing: 1.2,
//           //                     ),
//           //                   ),
//           //                 ),
//           //                 background: ClipRRect(
//           //                   borderRadius: BorderRadius.circular(20),
//           //                   child: Image.network(
//           //                     'https://images.joseartgallery.com/100736/what-kind-of-art-is-popular-right-now.jpg',
//           //                     fit: BoxFit.cover,
//           //                   ),
//           //                 ),
//           //               ),
//           //       ),
//           //       floating: false,
//           //       pinned: true,
//           //       snap: false,
//           //       // elevation: 10.0,
//           //       backgroundColor: context.colorScheme.primary,
//           //       shape: const RoundedRectangleBorder(
//           //         borderRadius: BorderRadius.vertical(
//           //           bottom: Radius.circular(20),
//           //         ),
//           //       ),
//           //       actionsPadding: EdgeInsets.symmetric(vertical: 10),
//           //       actions: [
//           //         AnimatedSize(
//           //           alignment: Alignment.centerRight,
//           //           duration: const Duration(milliseconds: 300),
//           //           child: value
//           //               ? SizedBox(
//           //                 height: 44,
//           //                 width: MediaQuery.of(context).size.width - 70,
//           //                 child: TextField(
//           //                   decoration:  InputDecoration(
//           //                     hintText: 'Search...',
//           //                     prefixIcon: Icon(CupertinoIcons.search),
//           //                     suffixIcon: IconButton(
//           //                       icon: Icon(CupertinoIcons.clear, size: 20),
//           //                       onPressed: () {
//           //                         _isSearching.value = false;
//           //                       },
//           //                     ),
//           //                     contentPadding: EdgeInsets.symmetric(
//           //                       horizontal: 16.0,
//           //                     ),
//           //                     border: InputBorder.none,
//           //                   ),
//           //                   autofocus: true,
//           //                   onSubmitted: (query) {
//           //                     // Handle search query
//           //                     Logger.info('Searching for: $query');
//           //                     _isSearching.value = false;
//           //                   },
//           //                 ),
//           //               )
//           //               : IconButton(
//           //                 iconSize: 24,
//           //                   icon: const Icon(CupertinoIcons.search),
//           //                   onPressed: () {
//           //                     _isSearching.value = true;
//           //                   },
//           //                 ),
//           //         ),
//           //         IconButton(
//           //           padding: EdgeInsets.zero,
//           //           icon: const Icon(Icons.more_vert),
//           //           onPressed: () {
//           //             // More options
//           //           },
//           //         ),
//           //       ],
//           //     );
//           //   },
//           // ),
//           // CupertinoSliverNavigationBar(
//           //   alwaysShowMiddle: false,
//           //   middle: Row(
//           //     children: [
//           //       Icon(CupertinoIcons.star),
//           //       SizedBox(width: 8),
//           //       Text('Example Page 1'),
//           //     ],
//           //   ),
//           //   largeTitle: Text('Example Page 1'),
      
//           //   backgroundColor: context.colorScheme.surfaceBright,
//           //   border: Border(
//           //     bottom: BorderSide(
//           //       color: context.colorScheme.onSurface.withAlpha(20),
//           //       width: 0.5,
//           //     ),
//           //   ),
//           // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
//           // searchField: CupertinoSearchTextField(
//           //   onSubmitted: (value) {
//           //     Logger.info('Searching for: $value');
//           //   },
//           // ),
//           // ),
//           SliverAppBar(
//             pinned: true,
//             collapsedHeight: 80,
//             backgroundColor: context.colorScheme.surfaceBright,
//             centerTitle: true,
//             expandedHeight: 300,
//             flexibleSpace: LayoutBuilder(
//               builder: (context, constraints) {
//                 // Calculate collapse progress: 0.0 (expanded) to 1.0 (collapsed)
//                 const double expandedHeight = 300;
//                 const double collapsedHeight = 80;
//                 final double currentHeight = constraints.biggest.height;
                
//                 // Consider it collapsed when height is closer to collapsed than expanded
//                 final isCollapsed = currentHeight < (expandedHeight + collapsedHeight) / 2;
      
//                 return FlexibleSpaceBar(
//                   stretchModes: const [
//                     StretchMode.zoomBackground,
//                     StretchMode.blurBackground,
//                     StretchMode.fadeTitle,
//                   ],
//                   background: ClipRRect(
//                     borderRadius: const BorderRadius.vertical(
//                       bottom: Radius.circular(20),
//                     ),
//                     child: Image.network(
//                       'https://images.joseartgallery.com/100736/what-kind-of-art-is-popular-right-now.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   collapseMode: CollapseMode.pin,
//                   title: AnimatedContainer(
//                     duration: const Duration(milliseconds: 300),
//                     curve: Curves.easeInOut,
//                     child: Flex(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       direction: isCollapsed ? Axis.horizontal : Axis.vertical,
//                       children: [
//                         AnimatedSwitcher(
//                           duration: const Duration(milliseconds: 300),
//                           child: SizedBox(
//                             // duration: const Duration(milliseconds: 300),
//                             // curve: Curves.easeInOut,
//                             width: isCollapsed ? 40 : 120,
//                             height: isCollapsed ? 40 : 120,
//                             child: CircleAvatar(
//                               backgroundImage: const NetworkImage(
//                                 'https://i.pinimg.com/236x/57/6f/96/576f965590192c5402d62c49f2ef707c.jpg',
//                               ),
//                             ),
//                           ),
//                         ),
//                         AnimatedContainer(
//                           duration: const Duration(milliseconds: 300),
//                           curve: Curves.easeInOut,
//                           width: isCollapsed ? 8 : 0,
//                           height: isCollapsed ? 0 : 20,
//                         ),
//                         Text(
//                           'SliverAppBar Title',
//                           style: TextStyle(
//                             color: context.colorScheme.onSurface,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 1.2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
//             ),
//           ),
//           CupertinoSliverRefreshControl(
//             onRefresh: () async {
//               Logger.info('Refreshing...');
//               await Future.delayed(const Duration(seconds: 0));
//               Logger.info('Refresh complete.');
//             },
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate((context, index) {
//               return ListTile(title: Text('Item #$index'));
//           }, childCount: 50),
//         ),
//       ],
//     );

//     // Only wrap with RefreshIndicator on non-iOS platforms
//     if (Platform.isIOS) {
//       return child;
//     }

//     return RefreshIndicator(
//       onRefresh: () async {
//         Logger.info('Refreshing...');
//         await Future.delayed(const Duration(seconds: 2));
//         Logger.info('Refresh complete.');
//       },
//       child: child,
//     );
//   }
// }class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//   final Widget child;

//   MySliverPersistentHeaderDelegate({
//     required this.expandedHeight,
//     required this.child,
//   });

//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     return SizedBox(height: expandedHeight, child: child);
//   }

//   @override
//   double get maxExtent => expandedHeight;

//   @override
//   double get minExtent => kToolbarHeight;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
// }

// @RoutePage()
// class ExamplePage2 extends StatelessWidget {
//   const ExamplePage2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Logger.info('Building $runtimeType');
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               context.router.push(const ProfileRoute());
//             },
//             child: const Text('push to profile page'),
//           ),
//           Text(
//             'Example Page 2',
//             style: Theme.of(context).textTheme.headlineMedium,
//           ),
//         ],
//       ),
//     );
//   }
// }


