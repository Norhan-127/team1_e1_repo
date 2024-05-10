class HomeModel{
  final String image;
  final String name;



  HomeModel({required this.image ,required this.name  });

}

List<HomeModel> items =[
  HomeModel(image:'assets/images/capsule_image.jpg', name: "Capsules"),
  HomeModel(image:'assets/images/dragon_image.jpg', name: "Dragons", ),
  HomeModel(image:'assets/images/rocket.jpg', name: "Rockets", ),
  HomeModel(image:'assets/images/crew_image.webp', name: "Crew", ),



];
