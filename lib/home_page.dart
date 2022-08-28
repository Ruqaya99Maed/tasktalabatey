
import 'package:dna3/cart.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class MyHomePage extends StatefulWidget {

  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.search,
          color: Colors.black54,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Row(
            children: [
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.black54,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "الاعظميه",
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Color(0x8a000000),
              size: 25,
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //Stories
              SizedBox(
                height: 180,
                child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    card(
                      function:()=> Get.to(Cart()),
                      name: 'المطاعم',
                      height: 120,
                      width: 120,
                      img:
                      'https://modo3.com/thumbs/fit630x300/235490/1561780821/طريقة_عمل_ستيك_اللحم_المشوي_على_الجريل.jpg',
                      fontSize: 15,
                      colorFont: Colors.black,
                    ),
                    card(
                      function:()=> Get.to(Cart()),
                      name: 'الفواكه',
                      height: 120,
                      width: 120,
                      img:
                      'https://vid.alarabiya.net/images/2021/11/16/9d5f929c-671b-4f14-9ad2-93'
                          '01c92df126/9d5f929c-671b-4f14-9ad2-9301c92df126_16x9_1200x676.jpg?width=372&format=jpg',
                      fontSize: 15,
                      colorFont: Colors.black,
                    ),
                    card(
                      function:()=> Get.to(Cart()),
                      name: 'بطاقات تعبئة',
                      height: 120,
                      width: 120,
                      img:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqxmbSeQnaUsdo0dYYh4zc_S2Yz6pbXT8mFw&usqp=CAU',
                      fontSize: 15,
                      colorFont: Colors.black,
                    ),
                    card(
                      function:()=> Get.to(Cart()),
                      name: 'ماركت',
                      height: 120,
                      width: 120,
                      img:
                      'https://cdn.dribbble.com/users/2016007/screenshots/10707408/'
                          'media/55de990adc28b6a4fa3bca09bce3f792.jpg?compress=1&resize=400x300',
                      fontSize: 15,
                      colorFont: Colors.black,
                    ),
                    card(
                      function:()=> Get.to(Cart()),
                      name: 'حلويات و معجنات',
                      height: 120,
                      width: 120,
                      img:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTan5SB77F12lWdicyTUSa-TucgZs8O3h_XDw&usqp=CAU',
                      fontSize: 15,
                      colorFont: Colors.black,
                    ),
                  ],
                ),
              ),

              Text(
                "المحلات الاكثر شيوعا",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 16),
                height: 2,
                width: MediaQuery.of(context).size.width * 0.35,
                color: Colors.red,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: double.infinity,
                      child: ListView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          card(
                            function:()=> Get.to(Cart()),
                            name: 'زرزور',
                            height: 120,
                            width: 300,
                            img:
                            'https://elmqal.com/wp-content/uploads/2021/03/قوزي-1024x683.jpg',
                            fontSize: 25,
                            colorFont: Colors.red,
                          ),
                          card(
                            function:()=> Get.to(Cart()),
                            name: 'بروستد عمو ',
                            height: 120,
                            width: 300,
                            img:
                            'https://www.justfood.tv/nawa3emPics/2.000%20(1)-2.jpg',
                            fontSize: 25,
                            colorFont: Colors.red,
                          ),
                          card(
                            function:()=> Get.to(Cart()),
                            name: 'كوست بركر',
                            height: 120,
                            width: 300,
                            img:
                            'https://lh5.googleusercontent.com/p/AF1QipMS_AGfkDQhglZLkxZBUFFORHVsrzpU1JF4EcH4=w408-h306-k-no',
                            fontSize: 25,
                            colorFont: Colors.red,
                          ),

                        ],
                      ),
                    ),


                    SizedBox(
                      height: 40,
                      child: ListView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          textCategory(
                              name: "الكل",
                              backgroundColor: Colors.red,
                              textColor: Colors.white),
                          textCategory(
                              name: "خصومات",
                              backgroundColor: Colors.grey.shade300,
                              textColor: Colors.black54),
                          textCategory(
                              name: "بدعم المحفضة",
                              backgroundColor: Colors.grey.shade300,
                              textColor: Colors.black54),
                          textCategory(
                              name: "توصيل طلباتي",
                              backgroundColor: Colors.grey.shade300,
                              textColor: Colors.black54),
                          textCategory(
                              name: "توصيل مجاني",
                              backgroundColor: Colors.grey.shade300,
                              textColor: Colors.black54),
                          textCategory(
                              name: "توصيل حصري",
                              backgroundColor: Colors.grey.shade300,
                              textColor: Colors.black54),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        card(
                          function:()=> Get.to(Cart),
                          name: "بركر فاير فلاي",
                          img:
                          'https://img.freepik.com/premium-photo/juicy-american-burger-hamburger-cheeseburger'
                              '-with-two-beef-patties-with-sauce-basked-black-space_124865-5964.jpg?w=2000',
                          height: 150,
                          width: double.infinity,
                          fontSize: 25,
                          colorFont:Colors.red,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Text('ممتاز') ,
                                    SizedBox(
                                        height: 25,
                                        child: Image.network('https://thumbs.dreamstime.com/b/icon-smail-smiles-icon-vector-flat-design-best-96415385.jpg',fit: BoxFit.cover,)),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text('الاعضمية') ,
                                Icon(Icons.location_on_outlined),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        card(
                          function:()=> Get.to(Cart()),
                          name: "بركر زورو",
                          img:
                          'https://images.deliveryhero.io/image/fd-tr/LH/gar5-hero.jpg?width=300&height=300&quality=45',
                          height: 150,
                          width: double.infinity,
                          fontSize: 25,
                          colorFont:Colors.red,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Text('ممتاز') ,
                                    SizedBox(
                                        height: 25,
                                        child: Image.network('https://thumbs.dreamstime.com/b/icon-smail-smiles-icon-vector-flat-design-best-96415385.jpg',fit: BoxFit.cover,)),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text('المنصور') ,
                                Icon(Icons.location_on_outlined),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),

       bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>[

    BottomNavigationBarItem(
      icon: Icon(Icons.person,color: Colors.grey,),
      label: 'الحساب',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list_alt_outlined),
      label: 'الطلبات',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet_outlined),
      label: 'المحفظة',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'الرئيسة',
    ),

  ],
  currentIndex: _selectedIndex,

  unselectedItemColor: Colors.grey.withOpacity(0.6),
  onTap: null,
),

// This trailing comma makes auto-formatting nicer for build methods.




    );
  }

  Widget textCategory({
    required String name,
    required Color textColor,
    required Color backgroundColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
                color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget card(
      {required String name,
        required String img,
        required double height,
        required double width,
        required double fontSize,
        required Color colorFont,
        required Function function
      }) {
    return GestureDetector(
      onTap:()=>function ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: colorFont,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
     bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>[

    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'الحساب',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list_alt_outlined,color: Color.fromARGB(255, 128, 125, 125),),
      label: 'الطلبات',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet_outlined),
      label: 'المحفظة',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'الرئيسة',
    ),

  ],
  currentIndex: 0,

  unselectedItemColor: Colors.grey.withOpacity(0.6),
  onTap: null,
),);

  }
}


