import 'package:app/screens/login.dart';
import 'package:app/screens/products.dart';
import 'package:app/screens/signup.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          name: 'login',
          builder: (context,state)=>const Login()
      ),
      GoRoute(
          path: '/signup',
          name: 'signup',
          builder: (context,state)=>const Signup()
      ),
      GoRoute(
          path: '/products',
          name: 'products',
          builder: (context,state)=>const Products()
      ),
    ],
);