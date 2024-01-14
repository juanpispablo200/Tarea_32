import 'package:flutter/material.dart';

class PerfilUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildProfileImage(),
                _buildUserInfo(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileImage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CircleAvatar(
        radius: 80.0,
        backgroundImage: AssetImage('assets/profile_image.jpg'),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            'Nombre de Usuario',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text('Correo electrónico: usuario@example.com'),
          SizedBox(height: 16.0),
          _buildResponsiveInfo(),
        ],
      ),
    );
  }

  Widget _buildResponsiveInfo() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Diseño para pantallas grandes
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Información adicional 1'),
              SizedBox(width: 16.0),
              Text('Información adicional 2'),
            ],
          );
        } else {
          // Diseño para pantallas pequeñas
          return Column(
            children: <Widget>[
              Text('Información adicional 1'),
              SizedBox(height: 8.0),
              Text('Información adicional 2'),
            ],
          );
        }
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PerfilUsuario(),
  ));
}
