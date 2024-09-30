import 'package:app/db/products.dart';
import 'package:app/widgets/ui.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  late Future<List<Product>> _list;

  @override
  void initState() {
    super.initState();
    _list = getProducts();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: myAppBar(),
      body: SizedBox(
        height: height,
        width: width,
        child: _productsList(height, width),
      ),
    );
  }

  Widget _productsList(double h, double w) {
    return FutureBuilder(
        future: _list,
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapShot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapShot.error}',
                style: TextStyle(color: Colors.red),
              ),
            );
          } else if (snapShot.hasData) {
            return productList(snapShot, h, w);
          } else {
            return Center(child: Text('No products found'));
          }
        });
  }

  Widget productList(AsyncSnapshot snapShot, double h, double w) {
    return ListView.builder(
        itemCount: snapShot.data!.length,
        itemBuilder: (context, index) {
          Product product = snapShot.data[index];
          return SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.lightBlueAccent.withOpacity(0.5),
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                title: Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                leading: Image.network(product.image,
                    width: w * 0.3,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.broken_image,
                    size: w * 0.1,
                    color: Colors.grey,
                  );
                }),
                trailing: Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
