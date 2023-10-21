part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.houseNumber,
    required this.phoneNumber,
    required this.city,
    required this.picturePath,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

// User mockUser = User(
//     id: 1,
//     name: "John",
//     email: "Johnganteng@gmail.com",
//     address: "Jl Makassar Kota Tengah",
//     houseNumber: "1234",
//     phoneNumber: "62897698911",
//     city: "Gorontalo",
//     picturePath:
//         "https://franchisematch.com/wp-content/uploads/2015/02/john-doe.jpg");



  // final int id;
  // final String name;
  // final String email;
  // final String address;
  // final String houseNumber;
  // final String phoneNumber;
  // final String city;
  // final String picturePath;


List<User> mockUser = [
  User(
      id: 1,
      name: "Insan Ibrahim",
      email: "Insan5272@gmail.com",
      address: "Jl Makassar Dulalowo Timoer",
      houseNumber: "RT 01",
      phoneNumber: "0896-9806-2183",
      city: "Kota Gorontalo",
      picturePath: mockFoods[1].picturePath),
  User(
     id: 1,
      name: "Alex Benjamin",
      email: "alexb@gmail.com",
      address: "Jl Jeruk Kota Gorontalo",
      houseNumber: "RT 01",
      phoneNumber: "0812-1133-2183",
      city: "Kota Gorontalo",
      picturePath: "https://franchisematch.com/wp-content/uploads/2015/02/john-doe.jpg"),
  User(
      id: 1,
      name: "Pecco Bagnaia",
      email: "p.Bagnaiana@gmail.com",
      address: "Malandeng Residence",
      houseNumber: "RT 01",
      phoneNumber: "0896-9806-2183",
      city: "Kota Manado",
      picturePath: mockFoods[1].picturePath),
];
