import 'package:clean_architecture_bloc/core/widgets/custom_app_bar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../resource/app_text.dart';
import '../router/path.dart';

class NotFoundNavigationPage extends StatelessWidget {
  const NotFoundNavigationPage({super.key});
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onPressed: (){
          context.pushNamed(PathsName.ON_BOARDING_PAGE);
        },
      ),
      body: Center(
        child: AppText.title('Page not found :('),
      ),
    );
    
  }
}
