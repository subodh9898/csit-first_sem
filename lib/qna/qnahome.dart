import 'package:csit1stsem/qna/qnadata.dart';
import 'package:csit1stsem/qna/qnaviewpage.dart';
import 'package:csit1stsem/screens/cominsoonscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QNA extends StatefulWidget {
  @override
  _QNAState createState() => _QNAState();
}

class _QNAState extends State<QNA> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("IMP QNA"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AnimatedItem(
            startDelayFraction: 0.00,
            controller: controller,
            child: AnimCategoryContainer(
              CategoryBean(
                Icons.desktop_mac,
                'Physics',
                [
                  CategoryBean(Icons.repeat,
                      'Rotational Dynamics and  Oscillatory Motion', [], () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => QNAView(
                    //               number1: 0,
                    //               number2: 0,
                    //             )));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ComingSoon()));
                  }),
                  CategoryBean(Icons.repeat, 'Electric And Magnetic Field', [],
                      () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => QNAView(
                    //               number1: 0,
                    //               number2: 1,
                    //             )));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ComingSoon()));
                  }),
                  CategoryBean(Icons.repeat, 'Fundamental Of Atomic Theory', [],
                      () {
                    // Navigator.push(
                    //     context,
                    // MaterialPageRoute(
                    //     builder: (context) => QNAView(
                    //           number1: 0,
                    //           number2: 2,
                    //         )));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ComingSoon()));
                  }),
                  CategoryBean(Icons.repeat, 'Method of Quantum Mechanics', [],
                      () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => QNAView(
                    //               number1: 0,
                    //               number2: 3,
                    //             )));
                  }),
                  CategoryBean(
                      Icons.repeat, 'Fundamental of Solid State Physics', [],
                      () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => QNAView(
                    //               number1: 0,
                    //               number2: 4,
                    //             )));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ComingSoon()));
                  }),
                  CategoryBean(Icons.repeat,
                      'Semiconductor and Semiconductor Devices', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 0,
                                  number2: 5,
                                )));
                  }),
                  CategoryBean(
                      Icons.repeat,
                      'Universal Gates and Physics of Integrated Circuits',
                      [], () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => QNAView(
                    //               number1: 0,
                    //               number2: 6,
                    //             )));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ComingSoon()));
                  }),
                ],
                () {},
              ),
            ),
          ),
          // SizedBox(height: 24),
          // AnimatedItem(
          //   startDelayFraction: 0.2,
          //   controller: controller,
          //   child: AnimCategoryContainer(
          //     CategoryBean(
          //       Icons.chat,
          //       'Maths',
          //       [
          //         CategoryBean(
          //             Icons.repeat, 'Function Of one Variable', [], () {}),
          //         CategoryBean(
          //             Icons.repeat, 'Limits and Continuity', [], () {}),
          //         CategoryBean(Icons.repeat, 'Derivatives', [], () {}),
          //         CategoryBean(
          //             Icons.repeat, 'Application of Derivatives', [], () {}),
          //         CategoryBean(Icons.repeat, 'AntiDerivatives', [], () {}),
          //         CategoryBean(Icons.repeat, 'Application of antiderivatives',
          //             [], () {}),
          //         CategoryBean(Icons.repeat, 'Ordinary differential Equations',
          //             [], () {}),
          //         CategoryBean(
          //             Icons.repeat, 'Infinite Sequence and Series', [], () {}),
          //         CategoryBean(
          //             Icons.repeat, 'Plane and Space Vectors', [], () {}),
          //         CategoryBean(Icons.repeat,
          //             'Partial Derivatives and Multiple Integrals', [], () {}),
          //       ],
          //       () {},
          //     ),
          //   ),
          // ),
          SizedBox(height: 24),
          AnimatedItem(
            startDelayFraction: 0.2,
            controller: controller,
            child: AnimCategoryContainer(
              CategoryBean(
                Icons.chat,
                'Digital Logic',
                [
                  CategoryBean(
                      Icons.repeat, 'Number Systems, Operations and Codes', [],
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 1,
                                  number2: 0,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Digital Design Fundamentals', [],
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 1,
                                  number2: 1,
                                )));
                  }),
                  CategoryBean(
                      Icons.repeat, 'Function of Combinational Logic', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 1,
                                  number2: 2,
                                )));
                  }),
                ],
                () {},
              ),
            ),
          ),
          SizedBox(height: 24),
          AnimatedItem(
            startDelayFraction: 0.2,
            controller: controller,
            child: AnimCategoryContainer(
              CategoryBean(
                Icons.chat,
                'IIT',
                [
                  CategoryBean(Icons.help, 'Introduction to Computer', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 0,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'The Computer System Hardware', [],
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 1,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Computer Memory', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 2,
                                )));
                  }),
                  CategoryBean(Icons.help, 'Input and Ouput Devices', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 3,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Data Representation', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 4,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Computer Software', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 5,
                                )));
                  }),
                  CategoryBean(Icons.repeat,
                      'Data Communication And Computer Network', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 6,
                                )));
                  }),
                  CategoryBean(
                      Icons.help, 'The Internet and Internet Services', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 7,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Fundamental Of database', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 8,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Multimedia ', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 9,
                                )));
                  }),
                  CategoryBean(Icons.help, 'Computer Security', [], () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 2,
                                  number2: 11,
                                )));
                  }),
                ],
                () {},
              ),
            ),
          ),
          SizedBox(height: 24),
          AnimatedItem(
            startDelayFraction: 0.1,
            controller: controller,
            child: AnimCategoryContainer(
              CategoryBean(
                Icons.dashboard,
                'C Program..',
                [
                  CategoryBean(Icons.help, 'Problem Solving with Computer', [],
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QNAView(
                                  number1: 3,
                                  number2: 0,
                                )));
                  }),
                  CategoryBean(Icons.repeat, 'Elements of C', [], () {}),
                  CategoryBean(Icons.repeat, 'Input and Output', [], () {}),
                  CategoryBean(
                      Icons.help, 'Operation and Expressions', [], () {}),
                  CategoryBean(Icons.repeat, 'Control Statements', [], () {}),
                  CategoryBean(Icons.repeat, 'Arrays', [], () {}),
                  CategoryBean(Icons.help, 'Functions', [], () {}),
                  CategoryBean(Icons.repeat, 'Structure and Union', [], () {}),
                  CategoryBean(Icons.repeat, 'Pointers ', [], () {}),
                  CategoryBean(Icons.help, 'File Handling in C', [], () {}),
                  CategoryBean(
                      Icons.help, 'Introduction to Graphics', [], () {}),
                ],
                () {},
              ),
            ),
          ),
          SizedBox(height: 24),
          AnimatedItem(
            startDelayFraction: 0.2,
            controller: controller,
            child: AnimCategoryContainer(
              CategoryBean(
                Icons.chat,
                'Numericals',
                [
                  CategoryBean(Icons.repeat, 'Coming Soon', [], () {}),
                ],
                () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedItem extends StatelessWidget {
  AnimatedItem({
    Key key,
    double startDelayFraction,
    @required this.controller,
    @required this.child,
  })  : topPaddingAnimation = Tween(
          begin: 60.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000 + startDelayFraction,
              0.400 + startDelayFraction,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> topPaddingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsets.only(top: topPaddingAnimation.value),
          child: child,
        );
      },
      child: child,
    );
  }
}

class AnimCategoryContainer extends StatefulWidget {
  final CategoryBean categoryBean;

  AnimCategoryContainer(this.categoryBean);

  @override
  _AnimCategoryContainerState createState() => _AnimCategoryContainerState();
}

class _AnimCategoryContainerState extends State<AnimCategoryContainer>
    with SingleTickerProviderStateMixin {
  bool isExpanded;
  AnimationController controller;
  Animation<EdgeInsetsGeometry> marginAnim;
  Animation<BorderRadius> radiusAnim;

  @override
  void initState() {
    super.initState();
    isExpanded = false;
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    marginAnim = Tween(
      begin: EdgeInsets.symmetric(horizontal: 16),
      end: EdgeInsets.zero,
    ).animate(controller);
    radiusAnim = BorderRadiusTween(
      begin: BorderRadius.circular(16),
      end: BorderRadius.zero,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          margin: marginAnim.value,
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: radiusAnim.value,
            ),
            color: Color(0xfffB2EBF2),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => onTap(),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          child: FlutterLogo(
                            // widget.categoryBean.icon,
                            size: 48,
                            // color: Colors.white,
                            //  colors: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            widget.categoryBean.title,
                            style: TextStyle(color: Colors.black, fontSize: 30),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRect(
                    child: Align(
                      heightFactor: controller.value,
                      child: child,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: isExpanded || controller.isDismissed
          ? Column(
              children: [
                for (final demo in widget.categoryBean.categoryItems)
                  AnimCategoryItem(demo),
                const SizedBox(height: 12),
              ],
            )
          : null,
    );
  }

  void onTap() {
    isExpanded = !isExpanded;
    if (isExpanded) {
      controller.forward();
      setState(() {});
    } else {
      controller.reverse().then<void>((value) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    }
  }
}

class AnimCategoryItem extends StatefulWidget {
  final CategoryBean categoryBeanItem;

  AnimCategoryItem(this.categoryBeanItem);

  @override
  _AnimCategoryItemState createState() => _AnimCategoryItemState();
}

class _AnimCategoryItemState extends State<AnimCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.add_circle_outline,
        color: Colors.indigo,
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.indigo,
      ),
      onTap: widget.categoryBeanItem.onTap,
      title: Text(
        widget.categoryBeanItem.title,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class CategoryBean {
  IconData icon;
  String title;
  List<CategoryBean> categoryItems;
  var onTap;

  CategoryBean(this.icon, this.title, this.categoryItems, this.onTap);
}
