class HomeModel{
  final String image;
  final String name;
  final int id;



  HomeModel({required this.image ,required this.name , required this.id });

}

List<HomeModel> items =[
  HomeModel(id: 1 ,image:'assets/images/spacexCapsules.jpg', name: "Capsules"),
  HomeModel(id: 2 ,image:'assets/images/dragon_image.jpg', name: "Dragons", ),
  HomeModel(id: 3 ,image:'assets/images/images.jpeg', name: "Rockets", ),
  HomeModel(id: 4 ,image:'assets/images/crew_image.webp', name: "Crew", ),



];
