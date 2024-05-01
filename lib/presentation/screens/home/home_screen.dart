import 'package:app_prestamos/presentation/screens/widgets/custom_navigation_bar.dart';
import 'package:app_prestamos/presentation/views/configuraciones_view.dart';
import 'package:app_prestamos/presentation/views/home_view.dart';
import 'package:app_prestamos/presentation/views/prestamos_view.dart';
import 'package:app_prestamos/presentation/views/reportes_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';
  final Widget childView;


  const HomeScreen({
    super.key, 
    required this.childView
  });

  final viewRoutes = const <Widget>[
    HomeView(),
    PrestamosView(),
    ConfiguracionView(),
    ReporteView()
  ];



  @override
  Widget build(BuildContext context) {

    //final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      /*body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),*/
      //key: scaffoldKey,
      body: childView,
      //body: viewRoutes[pageIndex],
      bottomNavigationBar: const CustomNavigationBar(),
      //drawer:  SideMenu(scaffoldKey: scaffoldKey),
    );
    
  }
}