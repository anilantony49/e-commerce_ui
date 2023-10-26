import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/details/components/add_to_cart.dart';
import 'package:ecommerce_app/screens/details/components/color_and_details.dart';
import 'package:ecommerce_app/screens/details/components/counter_with_favButton.dart';
import 'package:ecommerce_app/screens/details/components/description.dart';
import 'package:ecommerce_app/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"),
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        Description(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        const CounterWithFavBtn(),
                        const SizedBox(height: kDefaultPadding / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                   ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
