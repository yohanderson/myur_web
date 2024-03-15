import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:myur/screems/desktop/food_desktop.dart';
import 'package:myur/screems/desktop/home_desktop.dart';
import 'package:myur/screems/desktop/lodgings_desktop.dart';
import 'package:myur/screems/desktop/taxi_desktop.dart';
import 'package:myur/screems/mobile/food_mobile.dart';
import 'package:myur/screems/mobile/home_mobile.dart';
import 'package:myur/screems/mobile/lodgings_mobile.dart';
import 'package:myur/screems/mobile/taxi_mobile.dart';
import 'package:myur/screems/tablet/food_tablet.dart';
import 'package:myur/screems/tablet/home_tablet.dart';
import 'package:myur/screems/tablet/lodgings_tablet.dart';
import 'package:myur/screems/tablet/taxi_tablet.dart';

class Trips extends StatefulWidget {
  final ValueNotifier<bool> darkMode;
  const Trips({super.key, required this.darkMode});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {

  int _selectedIndex = 0;

  bool menuActive = false;

  //mobile
  final List<Widget> pagesIndex300 = [
    const HomeMobile(),
    const LodgingsMobile(),
    const TaxiMobile(),
    const FoodMobile(),
  ];

  Widget buildNavigationBar300() {
    return ValueListenableBuilder<bool>(
        valueListenable: widget.darkMode,
        builder: (context, value, child) {
          var darkModeTheme = value;
          return Container(
            height:70,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                  spreadRadius: 0.2,
                  blurRadius:20,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 46,
                              width: 46,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: darkModeTheme == false ? Image.network('assets/myur_dark.jpg') : Image.network('assets/myur_light.jpg'),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('M\'yur',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Row(
                  children: [
                    darkModeTheme == false ?
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.darkMode.value = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only( right: 8),
                        child: SizedBox(
                          width: 45,
                          height: 20,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(2,2),
                                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                          offset: const Offset(1,1),
                                          color: Colors.white.withOpacity(0.5),
                                          blurRadius: 3,
                                          inset: true
                                      ),

                                    ]
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.secondary,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(-2,-2),
                                              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                              blurRadius: 5,
                                              inset: true
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) :
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.darkMode.value = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SizedBox(
                          width: 45,
                          height: 20,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.background,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(2,2),
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 5,
                                      ),
                                      BoxShadow(
                                          offset: const Offset(-2,-2),
                                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                          blurRadius: 4,
                                          inset: true
                                      ),
                                    ]
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.secondary,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(2,2),
                                              color: Colors.white.withOpacity(0.7),
                                              blurRadius: 3,
                                              inset: true
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( right: 20),
                      child: InkWell(
                        onTap: () {
                          if(menuActive == true) {
                            setState(() {
                            menuActive = false;
                            });
                          } else {
                            setState(() {
                            menuActive = true;
                            });
                          }
                        },
                        child: Icon(Icons.menu,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  //tablet
  final List<Widget> pagesIndex600 = [
    const HomeTablet(),
    const LodgingsTablet(),
    const TaxiTablet(),
    const FoodTablet()
  ];

  Widget buildNavigationBar600() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 15),
      child: ValueListenableBuilder<bool>(
          valueListenable: widget.darkMode,
          builder: (context, value, child) {
            var darkModeTheme = value;
            return Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                    spreadRadius: 0.2,
                    blurRadius:20,
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 65,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).colorScheme.onBackground,
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: darkModeTheme == false ? Image.network('assets/myur_dark.jpg') : Image.network('assets/myur_light.jpg'),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: _selectedIndex == 0
                          ? Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5
                                )
                              ]
                          ),
                          child: const Icon(Icons.home_filled ))
                          : const SizedBox(
                        height: 35,
                        child: Icon(
                          Icons.home_filled,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: _selectedIndex == 1
                          ? Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                                    blurRadius: 5
                                )
                              ]
                          ),
                          child: const Icon(Icons.villa,))
                          : const SizedBox(
                        height: 35,
                        child: Icon(
                          Icons.villa,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                  ),
                  InkWell(
                    child: _selectedIndex == 2
                        ? Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.onPrimary,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(2,2),
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 5
                              )
                            ]
                        ),child: const Icon(Icons.local_taxi))
                        : const SizedBox(
                      height: 35,
                      child: Icon(
                        Icons.local_taxi,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      child: _selectedIndex == 3
                          ? Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5
                                )
                              ]
                          ),child: const Icon(Icons.fastfood, size: 21,))
                          : const SizedBox(
                        height: 35,
                        child: Icon(
                          Icons.fastfood, size: 21,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                  darkModeTheme == false ?
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.darkMode.value = true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SizedBox(
                        width: 60,
                        height: 25,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(2,2),
                                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                                      blurRadius: 3,
                                    ),
                                    BoxShadow(
                                        offset: const Offset(1,1),
                                        color: Colors.white.withOpacity(0.5),
                                        blurRadius: 3,
                                        inset: true
                                    ),

                                  ]
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                child: Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(-2,-2),
                                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                            blurRadius: 5,
                                            inset: true
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) :
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.darkMode.value = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SizedBox(
                        width: 60,
                        height: 25,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.background,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(2,2),
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 5,
                                    ),
                                    BoxShadow(
                                        offset: const Offset(-2,-2),
                                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                        blurRadius: 4,
                                        inset: true
                                    ),
                                  ]
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(2,2),
                                            color: Colors.white.withOpacity(0.7),
                                            blurRadius: 3,
                                            inset: true
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }

  //desktop
  final List<Widget> pagesIndex900 = [
    const HomeDesktop(),
    const LodgingsDesktop(),
    const TaxiDesktop(),
    const FoodDesktop(),
  ];

  Widget buildNavigationBar900() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 15),
      child: ValueListenableBuilder<bool>(
          valueListenable: widget.darkMode,
          builder: (context, value, child) {
            var darkModeTheme = value;
          return Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                  spreadRadius: 0.2,
                  blurRadius:20,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 65,
                    width: 65,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: darkModeTheme == false ? Image.network('assets/myur_dark.jpg') : Image.network('assets/myur_light.jpg'),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: _selectedIndex == 0
                          ? Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2,2),
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5
                              )
                            ]
                          ),
                          child: const Icon(Icons.home_filled ))
                          : const SizedBox(
                        height: 35,
                        child: Icon(
                          Icons.home_filled,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: _selectedIndex == 1
                          ? Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                                    blurRadius: 5
                                )
                              ]
                          ),
                          child: const Icon(Icons.villa,))
                          : const SizedBox(
                        height: 35,
                        child: Icon(
                          Icons.villa,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                  ),
                  InkWell(
                    child: _selectedIndex == 2
                        ? Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.onPrimary,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(2,2),
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 5
                              )
                            ]
                        ),child: const Icon(Icons.local_taxi))
                        : const SizedBox(
                      height: 35,
                      child: Icon(
                        Icons.local_taxi,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      child: _selectedIndex == 3
                          ? Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5
                                )
                              ]
                          ),child: const Icon(Icons.fastfood, size: 21,))
                          : const SizedBox(
                        height: 35,
                        child: Icon(
                         Icons.fastfood, size: 21,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                darkModeTheme == false ?
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.darkMode.value = true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      width: 60,
                      height: 25,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                                    blurRadius: 3,
                                  ),
                                  BoxShadow(
                                      offset: const Offset(1,1),
                                      color: Colors.white.withOpacity(0.5),
                                      blurRadius: 3,
                                      inset: true
                                  ),

                                ]
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(-2,-2),
                                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                          blurRadius: 5,
                                          inset: true
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ) :
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.darkMode.value = false;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      width: 60,
                      height: 25,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                  ),
                                  BoxShadow(
                                      offset: const Offset(-2,-2),
                                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                      blurRadius: 4,
                                      inset: true
                                  ),
                                ]
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(2,2),
                                          color: Colors.white.withOpacity(0.7),
                                          blurRadius: 3,
                                          inset: true
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: [
                      buildNavigationBar300(),
                      const SizedBox(height: 160,),
                      pagesIndex300[_selectedIndex],
                    ],
                  ),
                  Positioned(
                    top: 70,
                    child: menuActive == true ? menuMobile() : const SizedBox(),)
                ],
              ),
            ),
          );
        }
        else if (constraints.maxWidth < 600) {
          return Scaffold(
            body: Row(
              children: [
                buildNavigationBar600(),
                Expanded(
                  child: pagesIndex600[_selectedIndex],
                )
              ],
            ),
          );
        }
        else {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                Row(
                  children: [
                    buildNavigationBar900(),
                    Expanded(
                      child: pagesIndex900[_selectedIndex],
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Widget menuMobile() {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: _selectedIndex == 0 ?
            Container(
            height: 30,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onPrimary,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(2,2),
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                      blurRadius: 5
                  )
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(Icons
                      .home_filled, color: Theme.of(context).textTheme.bodyLarge?.color,),
                ),
                Text(
                  'Inicio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyLarge?.color,),
                ),
              ],
            ),
          ) : SizedBox(
              height: 30,
              width: 90,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .home_filled, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Inicio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
          ),
            onTap: () {
              setState(() {
                _selectedIndex = 0;
                menuActive = false;
              });
            },
          ),
          InkWell(
            child: _selectedIndex == 1 ?
            Container(
              height: 30,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.onPrimary,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(2,2),
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                        blurRadius: 5
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .villa, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Alojamientos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
            ) :
            SizedBox(
              height: 30,
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .villa, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Alojamientos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                _selectedIndex = 1;
                menuActive = false;
              });
            },
          ),
          InkWell(
            child: _selectedIndex == 2 ?
            Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.onPrimary,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(2,2),
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                        blurRadius: 5
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .local_taxi, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Taxi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
            ) : SizedBox(
              height: 30,
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .local_taxi, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Taxi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                _selectedIndex = 2;
                menuActive = false;
              });
            },
          ),
          InkWell(
            child: _selectedIndex == 3 ?
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.onPrimary,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(2,2),
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                        blurRadius: 5
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .fastfood, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Comida',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
            ) : SizedBox(
              height: 30,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons
                        .fastfood, color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                  Text(
                    'Comida',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                _selectedIndex = 3;
                menuActive = false;
              });
            },
          ),
        ],
      ),
    );
  }
}

