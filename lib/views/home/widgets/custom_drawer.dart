import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/home/screens/home_screen.dart';
import 'package:dajeej/views/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import 'custom_list_tile.dart';
import 'custom_toggle_widget.dart';

class CustomDrawer extends StatelessWidget {
   const CustomDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.width * 0.75,
      backgroundColor: AppColors.blue,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              height: context.height * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade800,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: const NetworkImage(
                    'https://hopatcongpolice.org/wp-content/uploads/2019/03/default-person.png',
                  ),
                ),
                minLeadingWidth: 60,
                title: const Text(
                  'Welcome Guest',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: InkWell(
                  onTap: () {
                    AppNavigator.push(
                        context: context, screen: const LoginScreen());
                  },
                  child: Row(
                    children: const [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        ' / ',
                        style: TextStyle(
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          CustomListTile(
            icon: Icons.home_outlined,
            text: 'Home',
            onTap: () {
              AppNavigator.push(context: context, screen: HomeScreen());
            },
          ),
          CustomListTile(
            icon: Icons.grid_view,
            text: 'Categories',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.store_outlined,
            text: 'Shops',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.rocket_outlined,
            text: 'Small Projects',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.favorite_border,
            text: 'My Favorites',
            onTap: () {},
          ),
          SizedBox(height: context.height * 0.025),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.blue.shade300,
            height: 2,
            width: double.infinity,
          ),
          CustomListTile(
            icon: Icons.receipt_long,
            text: 'Terms & Conditions',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.phone,
            text: 'Contact Us',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.info_outline,
            text: 'About App',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.security,
            text: 'Privacy Policy',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.language,
            text: 'العربية ',
            onTap: () {},
          ),
          SizedBox(height: context.height * 0.025),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.blue.shade300,
            height: 2,
            width: double.infinity,
          ),
          const CustomToggleWidget(),
        ],
      ),
    );
  }
}
