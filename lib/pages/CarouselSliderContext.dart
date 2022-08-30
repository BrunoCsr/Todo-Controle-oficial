import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tdc/util/Carta.dart';

class CarouselSliderContext extends StatefulWidget {
  const CarouselSliderContext({Key? key}) : super(key: key);

  @override
  State<CarouselSliderContext> createState() => _CarouselSliderContextState();
}

class _CarouselSliderContextState extends State<CarouselSliderContext> {
  final urlImages = [
    "https://thumbs.dreamstime.com/b/floresta-tropical-bonita-na-fuga-de-natureza-do-ka-do-ang-36703721.jpg",
    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://www.bhaktiphotos.com/wp-content/uploads/2018/04/Mahadev-Bhagwan-Photo-for-Devotee.jpg",
    "https://media.gettyimages.com/photos/fisherman-sitting-on-bamboo-raft-with-cormorant-side-view-picture-idsb10069012w-001?s=612x612"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(height: 400, enlargeCenterPage: true),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImage(urlImage, index);
        },
      ),
    );
  }

/*
  Widget buildImage(String urlImage, int index) => ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          // margin: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.grey,
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );*/

  Widget buildImage(String urlImage, int index) =>
      Carta(assignedText: 'assignedText', path: 'urlImage');
}
