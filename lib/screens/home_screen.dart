import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:foobnb/widgets/banner_widget.dart';
import 'package:foobnb/widgets/brandHighlights.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Shop App',
              style: TextStyle(
                letterSpacing: 2,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(IconlyLight.buy),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            SearchWidget(),
            SizedBox(
              height: 10,
            ),
            BannerWidget(),
            BrandHighlight(),
          ],
        ));
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(8, 5, 8, 0),
                  hintText: 'Find your Favorite food',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(IconlyLight.infoSquare, size: 12, color: Colors.white),
                  Text(
                    'Good food',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(IconlyLight.infoSquare, size: 12, color: Colors.white),
                  Text(
                    'Food at convenience',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(IconlyLight.infoSquare, size: 12, color: Colors.white),
                  Text(
                    'Trusted Brands and Homes',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
