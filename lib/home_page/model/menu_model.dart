class MenuItem {
  final String name;
  final String iconPath;
  final int? notificationCount;

  MenuItem({
    required this.name,
    required this.iconPath,
    this.notificationCount,
  });
  static List<MenuItem> menuItem = [
    MenuItem(name: "Scan QR Code", iconPath: "assets/Icons/QR Code.png"),
    MenuItem(
      name: "Tickets",
      iconPath: "assets/Icons/Ticket.png",
      notificationCount: 16,
    ),
    MenuItem(
      name: "Properties",
      iconPath: "assets/Icons/Vector.png",
      notificationCount: 3,
    ),
    MenuItem(name: "Analytics", iconPath: "assets/Icons/Dashboard.png"),
    MenuItem(
      name: "Calendar",
      iconPath: "assets/Icons/Calendar.png",
      notificationCount: 3,
    ),
    MenuItem(name: "Inspections", iconPath: "assets/Icons/Inspections.png"),
  ];

  static List<MenuItem> menuItemList = [
    MenuItem(name: "Audit", iconPath: "assets/Icons/Audit.png"),
    MenuItem(name: "Loop Vendors", iconPath: "assets/Icons/Loop.png"),
    MenuItem(
      name: "Safety Forms",
      iconPath: "assets/Icons/Safety.png",
      notificationCount: 3,
    ),
    MenuItem(name: "Incident Report", iconPath: "assets/Icons/Incident.png"),
    MenuItem(name: "Surveys", iconPath: "assets/Icons/Survey.png"),
    MenuItem(name: "Linked", iconPath: "assets/Icons/Link.png"),
    MenuItem(name: "Logs", iconPath: "assets/Icons/Logs.png"),
    MenuItem(name: "Property Walk", iconPath: "assets/Icons/Property Walk.png"),
    MenuItem(name: "Documents", iconPath: "assets/Icons/Documents.png"),
    MenuItem(
      name: "Knowledge Center",
      iconPath: "assets/Icons/Knowledge Center.png",
    ),
  ];
}
