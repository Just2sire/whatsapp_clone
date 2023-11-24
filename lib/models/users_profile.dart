class UserProfile {
  final String img;
  final String username;
  final int unreadMessages = 0;
  final String lastMessage;
  final DateTime lastMessagedate;

  UserProfile(
    {
    unreadMessages, 
    required this.img,
    required this.username,
    required this.lastMessage,
    required this.lastMessagedate,
  });
}
