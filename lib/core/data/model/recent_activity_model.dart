class RecentActivityModel {
  final int id;
  final String title;
  final String date;
  final String amount;
  final String status;
  final String image;
  
  RecentActivityModel({
    required this.id,
    required this.title,
    required this.date,
    required this.amount,
    required this.status,
    required this.image,
  });
}

final List<RecentActivityModel> listRecentActivity = [
  RecentActivityModel(
      id: 1,
      title: "Tik Tok",
      date: "Today 12:30",
      amount: "-\$10",
      status: "Transfer",
      image: "asset/image/tiktok.jpg"),
  RecentActivityModel(
      id: 2,
      title: "Firebase",
      date: "Yesterday 10:30",
      amount: "+\$100",
      status: "Income",
      image: "asset/image/firebase.jpg"),
  RecentActivityModel(
      id: 3,
      title: "Cocacola",
      date: "Today 12:30",
      amount: "-\$10",
      status: "Transfer",
      image: "asset/image/coca.jpg"),
  RecentActivityModel(
      id: 4,
      title: "YouTube",
      date: "Today 3:30",
      amount: "-\$30",
      status: "Transfer",
      image: "asset/image/youtube.jpg"),
  RecentActivityModel(
      id: 5,
      title: "Amazon",
      date: "Today 12:30",
      amount: "+\$10",
      status: "Income",
      image: "asset/image/amazon.jpg"),
];
