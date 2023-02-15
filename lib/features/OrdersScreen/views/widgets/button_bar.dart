import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({Key key}) : super(key: key);

  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
  int _selectedIndex = 0;

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    width: 80,
                    child: Text(
                      "ملغي",
                      style: TextStyle(
                          color:
                              _selectedIndex == 0 ? Colors.red : Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: _selectedIndex == 0
                          ? Color.fromARGB(255, 255, 152, 134)
                          : Colors.grey.shade200,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: 80,
                    child: Text(
                      "مرفوض",
                      style: TextStyle(
                          color:
                              _selectedIndex == 1 ? Colors.red : Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: _selectedIndex == 1
                            ? Color.fromARGB(255, 255, 152, 134)
                            : Colors.grey.shade200),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: Container(
                    width: 80,
                    child: Text(
                      "موافق عليه",
                      style: TextStyle(
                          color:
                              _selectedIndex == 2 ? Colors.green : Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: _selectedIndex == 2
                            ? Color.fromARGB(211, 203, 245, 194)
                            : Colors.grey.shade200),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(3,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  child: Container(
                    width: 80,
                    child: Text(
                      "قيد الانتظار",
                      style: TextStyle(
                          color: _selectedIndex == 3
                              ? Colors.orange
                              : Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: _selectedIndex == 3
                            ? Color.fromARGB(213, 255, 227, 172)
                            : Colors.grey.shade200),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 20,
            child: PageView(
              controller: _pageController,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Text(
                        "(0)ملغي",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      "assets/images/IMG_845D34268599-1-removebg-preview.png",
                      height: 200,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "لا توجد طلبات حالية",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Text(
                        "(0)مرفوض",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      "assets/images/IMG_845D34268599-1-removebg-preview.png",
                      height: 200,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "لا توجد طلبات حالية",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Text(
                        "(0)موافق عليه",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      "assets/images/IMG_845D34268599-1-removebg-preview.png",
                      height: 200,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "لا توجد طلبات حالية",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Text(
                        "(0)قيد الانتظار",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      "assets/images/IMG_845D34268599-1-removebg-preview.png",
                      height: 200,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "لا توجد طلبات حالية",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
