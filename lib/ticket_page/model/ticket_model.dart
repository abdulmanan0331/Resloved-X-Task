class TicketModel {
  final String id;
  final String title;
  final String description;
  final String company;
  final String timeAgo;
  final String priority;
  final String icon;
  final String status;
  final String assignedTo;

  TicketModel({
    required this.id,
    required this.title,
    required this.description,
    required this.company,
    required this.timeAgo,
    required this.priority,
    required this.icon,
    required this.status,
    required this.assignedTo,
  });
}

List<TicketModel> tasks = [
  TicketModel(
    id: "725",
    title: "Elevator Communication Error",
    description: "Chillicothe Carpet",
    company: "Chillicothe Carpet",
    timeAgo: "19 hours ago",
    priority: "Urgent",
    status: "Open",
    assignedTo: "2 People",
    icon: 'assets/Icons/Maintenance.png',
  ),
  TicketModel(
    id: "4603",
    title: "Routine Lightbulb Changes - Near Exit",
    description: "Clean and Go",
    company: "Clean and Go",
    timeAgo: "19 hours ago",
    priority: "Low",
    status: "Not Assigned",
    assignedTo: "1 Person",
    icon: 'assets/Icons/Ticket.png',
  ),
  TicketModel(
    id: "544",
    title: "Spots on the floor",
    description: "Buckeye State Bank",
    company: "Buckeye State Bank",
    timeAgo: "19 hours ago",
    priority: "Medium",
    status: "Open",
    assignedTo: "1 Person",
    icon: 'assets/Icons/Maintenance.png',
  ),
  TicketModel(
    id: "75451",
    title: "Ant Traps Set - Building Perimeter",
    description: "Petland",
    company: "Petland",
    timeAgo: "19 hours ago",
    priority: "High",
    status: "Open",
    assignedTo: "2 People",
    icon: 'assets/Icons/Maintenance.png',
  ),
];
