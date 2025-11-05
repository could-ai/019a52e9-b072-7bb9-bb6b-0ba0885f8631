import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/student.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final List<Student> _students = [
    Student(id: '1', name: 'John Doe', imageUrl: 'https://i.pravatar.cc/150?img=1'),
    Student(id: '2', name: 'Jane Smith', imageUrl: 'https://i.pravatar.cc/150?img=2'),
    Student(id: '3', name: 'Peter Jones', imageUrl: 'https://i.pravatar.cc/150?img=3'),
    Student(id: '4', name: 'Mary Williams', imageUrl: 'https://i.pravatar.cc/150?img=4'),
    Student(id: '5', name: 'David Brown', imageUrl: 'https://i.pravatar.cc/150?img=5'),
    Student(id: '6', name: 'Susan Davis', imageUrl: 'https://i.pravatar.cc/150?img=6'),
    Student(id: '7', name: 'Michael Miller', imageUrl: 'https://i.pravatar.cc/150?img=7'),
    Student(id: '8', name: 'Linda Wilson', imageUrl: 'https://i.pravatar.cc/150?img=8'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          final student = _students[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(student.imageUrl),
                backgroundColor: Colors.grey[200],
              ),
              title: Text(student.name),
              subtitle: Text('ID: ${student.id}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle student tap
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new student
        },
        tooltip: 'Add Student',
        child: const Icon(Icons.add),
      ),
    );
  }
}
