class SlideModel {
  final int id;
  final String image;

  SlideModel({
    required this.id,
    required this.image,
  });
}

final List<SlideModel> listSlide = [
  SlideModel(id: 1, image: "asset/image/slide.jpg"),
  SlideModel(id: 2, image: "asset/image/slide_2.jpg"),
  SlideModel(id: 3, image: "asset/image/slide_3.jpg"),
];
