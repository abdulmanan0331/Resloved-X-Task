part of 'view.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030303),

      appBar: AppBar(
        backgroundColor: Color(0xff030303),

        centerTitle: true,
        title: Text('Tickets', style: TextStyle(color: Colors.white)),
        actions: [_buildIconButton(Icons.add)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWithButtons(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: const EdgeInsets.all(12),
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TicketCard(ticketModel: task);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBarWithButtons extends StatelessWidget {
  const SearchBarWithButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.black, // Background color
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          // Search Bar
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.white54, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Sort Button
          _buildIconButton(Icons.sort),
          const SizedBox(width: 8),
          // Filter Button
          _buildIconButton(Icons.tune),
        ],
      ),
    );
  }
}

Widget _buildIconButton(IconData icon) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black54),
    child: Icon(icon, color: Colors.white, size: 20),
  );
}

class TicketCard extends StatelessWidget {
  final TicketModel ticketModel;
  const TicketCard({super.key, required this.ticketModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Color(0xff151515),
        border: Border(
          left: BorderSide(
            color:
                ticketModel.priority == 'Urgent' ||
                        ticketModel.status == 'Not Assigned'
                    ? Color(0xffE71E25)
                    : Colors.transparent,
            width: 6,
          ), // Left red border
        ),
        borderRadius: BorderRadius.circular(12),
      ),

      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                ticketModel.icon,
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 5),
              Text(
                ticketModel.id,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  _buildStatusBadge(ticketModel.status),
                  SizedBox(width: 6),
                  _buildPriorityBadge(ticketModel.priority),
                ],
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            ticketModel.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            ticketModel.description,
            style: TextStyle(color: Colors.white60, fontSize: 14),
          ),
          SizedBox(height: 6),
          Text(
            ticketModel.company,
            style: TextStyle(
              color: Colors.white60,
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ticketModel.timeAgo,
                style: TextStyle(color: Colors.white38, fontSize: 12),
              ),
              Row(children: _buildAvatarSection(ticketModel.assignedTo)),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildAvatarSection(String assignedTo) {
    List<Widget> avatars = [
      CircleAvatar(
        radius: 12,
        backgroundColor: Colors.white24,
        child: Icon(Icons.person, size: 14, color: Colors.white),
      ),
    ];
    if (assignedTo == "2 People") {
      avatars.add(SizedBox(width: 4));
      avatars.add(
        CircleAvatar(
          radius: 12,
          backgroundImage: NetworkImage(
            'https://randomuser.me/api/portraits/men/1.jpg',
          ),
        ),
      );
    }
    avatars.add(SizedBox(width: 4));
    avatars.add(
      Text(assignedTo, style: TextStyle(color: Colors.white70, fontSize: 12)),
    );
    return avatars;
  }
}

Widget _buildPriorityBadge(String priority) {
  Color color;
  switch (priority) {
    case "Urgent":
      color = Color(0xffE71E25);
      break;
    case "High":
      color = Colors.orange;
      break;
    case "Medium":
      color = Colors.blue;
      break;
    case "Low":
      color = Colors.green;
      break;
    default:
      color = Colors.grey;
  }
  return _buildBadge(priority, color);
}

Color? _buildBorder(String status) {
  Color color;
  switch (status) {
    case "Open":
      color = Color(0xffE71E25);
      break;
    case "Not Assigned":
      color = Colors.white;
      break;
    default:
      color = Colors.transparent;
  }
  return color;
}

// Badge for  ticketModel Status
Widget _buildStatusBadge(String status) {
  Color color;
  switch (status) {
    case "Open":
      color = Colors.red;
      break;
    case "Not Assigned":
      color = Colors.white;
      break;
    case "Closed":
      color = Colors.grey;
      break;
    default:
      color = Colors.blue;
  }
  return _buildBadge(
    status,
    color,
    textColor: status == 'Not Assigned' ? Colors.black : null,
  );
}

// Generic Badge Widget
Widget _buildBadge(String text, Color color, {Color? textColor}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: textColor ?? Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
