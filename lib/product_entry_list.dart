import 'package:allmighty_store/models/product_entry.dart';
import 'package:allmighty_store/product_detail.dart';
import 'package:allmighty_store/product_entry_card.dart';
import 'package:allmighty_store/widgets/left_drawer.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  final bool filterUserProducts;
  
  const ProductEntryListPage({
    super.key, 
    this.filterUserProducts = false // Defaultnya false (tampilkan semua)
  });

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  late bool showUserProductsOnly;
  @override
  void initState() {
    super.initState();
    showUserProductsOnly = widget.filterUserProducts;
  }
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    // TODO: Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000

    String url = 'http://localhost:8000/json/';

    
    if (showUserProductsOnly) {
      url += '?filter_user=true';
    }

    final response = await request.get(url);

    // Decode response to json format
    var data = response;

    // Convert json data to ProductEntry objects
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Product Entry List'),
            const SizedBox(width: 10), // Memberi jarak antara teks dan ikon
            
            // Tombol Filter dipindah ke sini
            IconButton(
              icon: Icon(
                showUserProductsOnly ? Icons.person : Icons.public,
                color: Colors.indigo, // Sesuaikan warna agar terlihat
                size: 24.0, // Ukuran ikon
              ),
              tooltip: showUserProductsOnly ? "Show All" : "Show Mine",
              onPressed: () {
                setState(() {
                  showUserProductsOnly = !showUserProductsOnly;
                });
              },
            ),
          ],
        ),
      ),
      drawer: const LeftDrawer(),
      body:!request.loggedIn
        ? const Center(
            child: Text(
              "Login dulu untuk melihat produk!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
      
        :FutureBuilder(
          future: fetchProduct(request),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return const Column(
                  children: [
                    Text(
                      'There are no Product in Allmighty Store yet.',
                      style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => ProductEntryCard(
                    product: snapshot.data![index],
                    onTap: () {
                      // Navigate to product detail page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: snapshot.data![index]),
                        ),
                      );
                    },
                  ),
                );
              }
            }
          },
        ),
    );
  }
}
