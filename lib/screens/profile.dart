import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Profile icon
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/profile_icon.png'), // Replace with your icon
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Username
            Text(
              'Username', // Replace with actual username
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Email
            Text(
              'email@example.com', // Replace with actual email
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 30),
            // Change password field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Change Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Update password button
            ElevatedButton(
              onPressed: () {
                // Handle update password logic
              },
              child: Text('Update Password'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue, // Change color if needed
              ),
            ),
            SizedBox(height: 20),
            // Logout button
            ElevatedButton(
              onPressed: () {
                // Handle logout logic
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red, // Change color if needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
