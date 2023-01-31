class Model1 {
  String? imgurl;
  String? catName;

  Model1({this.imgurl, this.catName});
  static List<Model1> getImg() {
    return [
      Model1(imgurl: "assets/img/1.jpg"),
      Model1(imgurl: "assets/img/2.jpg"),
      Model1(imgurl: "assets/img/3.jpg"),
      Model1(imgurl: "assets/img/6.jpg"),
      Model1(imgurl: "assets/img/7.jpg"),
      Model1(imgurl: "assets/img/4.jpg"),
      Model1(imgurl: "assets/img/8.jpg"),
      Model1(imgurl: "assets/img/5.jpg")
    ];
  }

  static List<Model1> getCatagorie() {
    return [
      Model1(imgurl: "assets/images/c1.jpg", catName: "Foundation"),
      Model1(imgurl: "assets/images/c2.jpg", catName: "Lipstick"),
      Model1(imgurl: "assets/images/c3.jpg", catName: "EyeShadow"),
      Model1(imgurl: "assets/images/c4.jpg", catName: "Mascara"),
    ];
  }
}
