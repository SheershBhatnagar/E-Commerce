
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/screens/categories_screen.dart';
import 'package:e_commerce/customer/screens/home_screen.dart';
import 'package:e_commerce/customer/screens/orders_screen.dart';
import 'package:e_commerce/screens/contact_us.dart';
import 'package:e_commerce/screens/help_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';
import 'package:e_commerce/screens/settings_screen.dart';
import 'package:e_commerce/utils/assets.dart';
import 'package:e_commerce/utils/strings.dart';

class NavDrawerCustomerMobile extends StatelessWidget {
  const NavDrawerCustomerMobile({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    return width <= 450 ? SafeArea(
      child: NavigationDrawer(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
            },
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets().imgNavBg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.45),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        Assets().icSell,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Sheersh Bhatnagar',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'i@sheershbhatnagar.me',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white.withAlpha(150),
                          shadows: const [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.home_outlined,
            ),
            title: Text(
              Strings().home,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.category_outlined,
            ),
            title: Text(
              Strings().categories,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrdersScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.shopping_cart_checkout_rounded,
            ),
            title: Text(
              Strings().orders,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.settings_outlined,
            ),
            title: Text(
              Strings().settings,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Divider(),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.live_help_outlined,
            ),
            title: Text(
              Strings().help,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.contact_support_outlined,
            ),
            title: Text(
              Strings().contactUs,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Divider(),
          ),
          ListTile(
            enableFeedback: true,
            leading: const Icon(
              Icons.logout,
            ),
            title: Text(
              Strings().logout,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ],
      ),
    ) : SafeArea(
      child: NavigationDrawer(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets().imgNavBg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.black.withOpacity(0.45),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      Assets().icSell,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/250?image=9',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Sheersh Bhatnagar',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'i@sheershbhatnagar.me',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white.withAlpha(150),
                        shadows: const [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.home_outlined,
            ),
            title: Text(
              Strings().home,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.list_alt_rounded,
            ),
            title: Text(
              Strings().categories,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.favorite_border_rounded,
            ),
            title: Text(
              Strings().wishlist,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.shopping_cart_outlined,
            ),
            title: Text(
              Strings().cart,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrdersScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.shopping_cart_checkout_rounded,
            ),
            title: Text(
              Strings().orders,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.settings_outlined,
            ),
            title: Text(
              Strings().settings,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Divider(),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.live_help_outlined,
            ),
            title: Text(
              Strings().help,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsScreen()));
            },
            enableFeedback: true,
            leading: const Icon(
              Icons.contact_support_outlined,
            ),
            title: Text(
              Strings().contactUs,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Divider(),
          ),
          ListTile(
            enableFeedback: true,
            leading: const Icon(
              Icons.logout,
            ),
            title: Text(
              Strings().logout,
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
