class User {
  final String name, image;
  final int id;
  final bool verified;
  User(
      {required this.id,
      required this.name,
      required this.image,
      required this.verified});
}

List<User> users = [
  User(
    id: 0,
    name: 'Likes',
    image: 'assets/profile0.jpeg',
    verified: false,
  ),
  User(
    id: 1,
    name: 'Tony',
    image: 'assets/profile1.jpeg',
    verified: true,
  ),
  User(
    id: 2,
    name: 'James',
    image: 'assets/profile2.jpeg',
    verified: false,
  ),
  User(
    id: 3,
    name: 'Jordan',
    image: 'assets/profile3.jpeg',
    verified: true,
  ),
  User(
    id: 4,
    name: 'Jim',
    image: 'assets/profile4.jpeg',
    verified: false,
  ),
];
