import 'package:flutter/material.dart';
import 'package:ims_app/viewmodels/main_viewmodel.dart';
import 'package:ims_app/viewmodels/product_viewmodel.dart';
import 'package:ims_app/views/screens/product_screen.dart';
import 'package:provider/provider.dart';

import 'core/helpers/util.dart';
import 'core/theme/theme.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => MainViewModel(),),
            ChangeNotifierProvider(create: (context) => ProductViewModel(),)
          ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = Utils.createTextTheme(context, "Roboto", "Montserrat");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: Scaffold(
        body: Consumer<MainViewModel>(
          builder: (BuildContext _, MainViewModel value, Widget? child) {
            return  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationRail(
                  backgroundColor: Colors.grey.shade300,
                    labelType: NavigationRailLabelType.all,
                    elevation: 5.0,
                    useIndicator: true,
                    minWidth: 100,
                    onDestinationSelected:(v) {
                      if(v==1){
                        ProductViewModel vm=context.read();
                        vm.fetchCategories();
                        vm.fetchSuppliers();
                        vm.fetchProducts();
                      }
                      value.selectedIndex=v;
                    },
                    destinations: value.destinations,
                    selectedIndex: value.selectedIndex),
                value.selectedIndex==1?ProductScreen():Text('Selected ${(value.destinations[value.selectedIndex].label as Text).data}')
              ],
            );
          },

        ),
      ),
    );
  }
}

