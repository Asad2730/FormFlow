class Product {
  final int id;
  final String name;
  final double price;
  final String image;
  final String description;

  Product({required this.id, required this.name, required this.price, required this.image, required this.description});
}

List<Product> products = [
  Product(
    id: 1,
    name: 'Wireless Headphones',
    price: 59.99,
    image: 'https://images.unsplash.com/photo-1517048676732-d65bc937f952',
    description: 'High-quality wireless headphones with noise cancellation.',
  ),
  Product(
    id: 2,
    name: 'Smartphone',
    price: 699.99,
    image: 'https://images.unsplash.com/photo-1491553895911-0055eca6402d',
    description: 'Latest model smartphone with advanced features and great camera.',
  ),
  Product(
    id: 3,
    name: 'Laptop',
    price: 1299.99,
    image: 'https://images.unsplash.com/photo-1517430816045-df4b7de11d8b',
    description: 'Powerful laptop for work and play with long battery life.',
  ),
  Product(
    id: 4,
    name: 'Smartwatch',
    price: 199.99,
    image: 'https://images.unsplash.com/photo-1516574187841-cb9cc2ca948b',
    description: 'Track your fitness and stay connected with this stylish smartwatch.',
  ),
  Product(
    id: 5,
    name: 'Gaming Console',
    price: 499.99,
    image: 'https://images.unsplash.com/photo-1572584380802-145f4f32b40e',
    description: 'Next-gen gaming console with ultra-high resolution support.',
  ),
  Product(
    id: 6,
    name: 'Bluetooth Speaker',
    price: 79.99,
    image: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f',
    description: 'Portable Bluetooth speaker with excellent sound quality.',
  ),
  Product(
    id: 7,
    name: '4K TV',
    price: 899.99,
    image: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9',
    description: 'Large 4K Ultra HD TV with smart features and stunning visuals.',
  ),
  Product(
    id: 8,
    name: 'DSLR Camera',
    price: 749.99,
    image: 'https://images.unsplash.com/photo-1519183071298-a2962cc8492c',
    description: 'Capture high-quality photos and videos with this DSLR camera.',
  ),
  Product(
    id: 9,
    name: 'Tablet',
    price: 349.99,
    image: 'https://images.unsplash.com/photo-1523473827532-4a75fdbf-a2b2',
    description: 'Lightweight tablet with a vibrant display and fast performance.',
  ),
  Product(
    id: 10,
    name: 'Wireless Charger',
    price: 29.99,
    image: 'https://images.unsplash.com/photo-1516574795360-6a3d84ccbd50',
    description: 'Fast wireless charger for all compatible devices.',
  ),
];



Future <List<Product>>  getProducts() async{
  await Future.delayed(Duration(seconds: 2));
  return products;
}