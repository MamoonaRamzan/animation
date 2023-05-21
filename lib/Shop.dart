import 'package:flutter/material.dart';
class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: 380,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.2),
                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.favorite),
                                color: Colors.white,
                            ),
                            IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.shopping_cart,
                                color: Colors.white,),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Our New Products",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                              const SizedBox(height: 15,),
                              Row(
                                children:const [
                                Text("View More",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios, color: Colors.white,size: 15,)
                                ]
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Categories",style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("All")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeCategory(image: 'assets/images/beauty.png',title: 'Beauty'),
                          makeCategory(image: 'assets/images/clothes.jpg',title: 'Clothes'),
                          makeCategory(image: 'assets/images/perfumes.jpg',title: 'Perfumes'),
                          makeCategory(image: 'assets/images/eyewear.jpeg',title: 'Eye Wear'),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Best Selling by Category",style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("All")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeBestCategory(image: 'assets/images/tech.jpg',title: 'Tech'),
                          makeBestCategory(image: 'assets/images/watces.jpg',title: 'Watches'),
                          makeBestCategory(image: 'assets/images/perfumes.jpg',title: 'Perfumes'),
                          makeBestCategory(image: 'assets/images/eyewear.jpeg',title: 'Eye Wear'),
                        ],
                      ),
                    )
                  ],
                ) ,
              ),
            ],
          ),
      ),
      );
  }
  Widget makeCategory({image,title}){
    return AspectRatio(
      aspectRatio:2 / 2.2,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                  ]
              )
          ),
          child:  Align(
              alignment: Alignment.bottomLeft,
              child: Text(title,style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),)),
        ),
      ),
    );
  }
  Widget makeBestCategory({image,title}){
    return AspectRatio(
      aspectRatio:3 / 2.2,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                  ]
              )
          ),
          child:  Align(
              alignment: Alignment.bottomLeft,
              child: Text(title,style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),)),
        ),
      ),
    );
  }
}
