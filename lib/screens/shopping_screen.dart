import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  final List<String> featured = const [
    "https://t3.ftcdn.net/jpg/03/34/79/68/360_F_334796865_VVTjg49nbLgQPG6rgKDjVqSb5XUhBVsW.jpg",
    "https://media.istockphoto.com/id/660490044/photo/the-perfect-dress-for-me.jpg?s=612x612&w=0&k=20&c=elEj_0xI7cId9PyIRqPrI4WZom3elIptpmAVRoORy44=",
    "https://media.istockphoto.com/id/1404603483/photo/female-autumn-clothes-on-hangers-in-white-room.jpg?s=612x612&w=0&k=20&c=BI8is6qBwJW9-pJMB_nqT48vM9uU-9VqIjpNu1uUtpQ="
  ];

  final List<Map<String, String>> products = const [
    {"title": "Shoes", "img": "https://i.pinimg.com/736x/07/85/9f/07859f72187c742b991bf0bf5fedc533.jpg"},
    {"title": "Watch", "img": "https://www.carlington.in/cdn/shop/files/Carlington_elite_analog_ladies_watch_CT_2007_rosewhite.jpg?v=1696689585&width=2400"},
    {"title": "Bag", "img": "https://img.freepik.com/free-photo/bag-hanging-from-furniture-item-indoors_23-2151073506.jpg?semt=ais_incoming&w=740&q=80"},
    {"title": "Glasses", "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfn04z6C8NzG2aJg1_RRkTD3jpbzSymM0meA&s"}
  ];
  final List<Map<String, String>> offers = const [
    {"title": "50% off Shoes", "img": "https://i.pinimg.com/736x/07/85/9f/07859f72187c742b991bf0bf5fedc533.jpg"},
    {"title": "Buy 1 Get 1 Bag", "img": "https://www.lacoste.com.eg/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-lacoste-master-catalog/default/dw79d0541d/images/NF4823AA_B50_31.jpg?sw=420&sh=420"},
    {"title": "Watch Clearance", "img": "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/s11-case-unselect-gallery-1-202509_FMT_WHH?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1756344861456"},
    {"title": "Sunglasses Sale", "img": "https://cdn.shopify.com/s/files/1/2633/2144/products/caddis-life-readers-porgy-backstage-reading-glasses-gloss-black-readers-0-00-blue-light-reading-glasses-31051380359356.jpg?v=1736811374"},
    {"title": "Backpack Discount", "img": "https://www.tortugabackpacks.com/cdn/shop/files/2024-03-TPP-BEST-OLIVER-03-OF-30-pt2-vs-finished.webp?v=1744236826&width=1946"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Products"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 220,
                child: PageView.builder(
                  itemCount: featured.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(featured[index], fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            products[index]["img"]!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          products[index]["title"]!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Item added to the cart"),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "Hot Offers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: offers.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Image.network(offers[index]["img"]!, width: 100, height: 100, fit: BoxFit.cover),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              offers[index]["title"]!,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
