part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.rate,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://akcdn.detik.net.id/community/media/visual/2022/06/10/ilustrasi-rendang-1_169.jpeg",
      name: "Rendang",
      description:
          "Makanan yang berasal dari sumatra ini sangat digemari beragam lapisan masyarakat",
      ingredients: "Makanan ini berbahan dasar daging dan dimasak dengan bumbu aneka rempah dan santan",
      price: 45000,
      rate: 4.2),
  Food(
      id: 2,
      picturePath:
          "https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/the-ultimate-guide-to-must-try-indonesian-food/2.jpg",
      name: "Pempek ",
      description:
          "Makanan berbahan daging ikan dan tepung kanji ini konon sudah ada sejak abad ke-16 lho, Sobat Pesona! Pempek menjadi kuliner favorit masyarakat, karena punya rasa yang komplit. ",
      ingredients: "Biji bapak kau, dan bahan rahasia lainnya",
      price: 12000,
      rate: 4.2),
  Food(
      id: 3,
      picturePath:
          "https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/the-ultimate-guide-to-must-try-indonesian-food/nasigoreng.jpg",
      name: "Nasi Goreng",
      description:
          " Rasa nikmat dari nasi goreng sudah diakui oleh dunia. Bahkan, pada tahun 2011 silam, nasi goreng menyabet peringkat kedua dalam daftar 50 makanan paling enak didunia berdasarkan hasil survei CNN Internasional",
      ingredients: "Biji Bapak muda, Air, Parutan Kelapa, Cakalang",
      price: 12000,
      rate: 4.2),
  Food(
      id: 4,
      picturePath:
          "https://www.masakapahariini.com/wp-content/uploads/2021/09/Binte-Biluhuta-Khas-Gorontalo.jpg",
      name: "Milu Siram",
      description:
          "Milu atau binthe artinya jagung, sedangkan siram atau huta berarti berkuah. Binthe biluhuta artinya makanan jagung yang diolah menggunakan kuah",
      ingredients: "Biji milu muda, Air, Parutan Kelapa, Cakalang",
      price: 12000,
      rate: 4.2),
  Food(
      id: 5,
      picturePath:
          "https://www.masakapahariini.com/wp-content/uploads/2021/09/Binte-Biluhuta-Khas-Gorontalo.jpg",
      name: "Milu Siram",
      description:
          "Milu atau binthe artinya jagung, sedangkan siram atau huta berarti berkuah. Binthe biluhuta artinya makanan jagung yang diolah menggunakan kuah",
      ingredients: "Biji milu muda, Air, Parutan Kelapa, Cakalang",
      price: 12000,
      rate: 4.2),
];
