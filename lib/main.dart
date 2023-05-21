import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Shop.dart';
void main()=>runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
   late AnimationController _scaleController;
   late Animation<double> _scaleAnimation;
  bool hide=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaleController=AnimationController(
        vsync:this,
        duration: const Duration(
            milliseconds: 800
        )
    );
    _scaleAnimation = Tween<double>(
        begin:1.0,
        end:30.0
    ).animate(_scaleController)..addStatusListener((status){
      if(status == AnimationStatus.completed) {
        Navigator.push(context, PageTransition(
            type: PageTransitionType.fade,
            child: const Shop()
        ));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/WestrenWear.png"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.4),

              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Brand New Prespective",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )),
                const SizedBox(height: 20,),
                const Text("Lets start with our summer collection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 20
                    )),
                const SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    setState(() {
                      hide:true;
                    });
                    _scaleController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context,child) =>Transform.scale(
                      scale:_scaleAnimation.value,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child:  Center(
                        child: hide== false ? const Text("Get Start",style:TextStyle(
                          fontWeight: FontWeight.bold
                        )):Container(),
                      ),
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Center(
                    child: Text("Create Account",style:TextStyle(
                      color: Colors.white,
                        fontWeight: FontWeight.bold
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
/*-----------------------------------------------------------------------------------------------------------------*/



