import 'package:note_app/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/sam.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);
final User madawa = User(
  id: 2,
  name: 'Madawa',
  imageUrl: 'assets/images/madawa.jpg',
);
final User nawodya = User(
  id: 3,
  name: 'Nawodya',
  imageUrl: 'assets/images/lahiru.jpg',
);
final User tharindu = User(
  id: 4,
  name: 'Tharindu',
  imageUrl: 'assets/images/tharindu.jpg',
);
final User shehan = User(
  id: 5,
  name: 'Shehan',
  imageUrl: 'assets/images/shehan.jpg',
);
final User duminda = User(
  id: 6,
  name: 'Duminda',
  imageUrl: 'assets/images/duminda.jpg',
);
final User rumesh = User(
  id: 7,
  name: 'Rumesh',
  imageUrl: 'assets/images/rumesh.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [shehan, rumesh, tharindu, nawodya, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: madawa,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tharindu,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nawodya,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: duminda,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: rumesh,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: madawa,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: madawa,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: madawa,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: madawa,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
