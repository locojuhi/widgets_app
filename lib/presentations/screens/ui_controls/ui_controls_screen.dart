import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String routeName = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = false;
  Transportation selectectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        RadioListTile(
          title: const Text('By car'),
          subtitle: const Text('Viajar por carro'),
          value: Transportation.car,
          groupValue: selectectedTransportation,
          onChanged: (value) => setState(() {
            selectectedTransportation = Transportation.car;
          }),
        ),
        RadioListTile(
          title: const Text('By boat'),
          subtitle: const Text('Viajar por bote'),
          value: Transportation.boat,
          groupValue: selectectedTransportation,
          onChanged: (value) => setState(() {
            selectectedTransportation = Transportation.boat;
          }),
        ),
        RadioListTile(
          title: const Text('By plane'),
          subtitle: const Text('Viajar por avion'),
          value: Transportation.plane,
          groupValue: selectectedTransportation,
          onChanged: (value) => setState(() {
            selectectedTransportation = Transportation.plane;
          }),
        ),
        RadioListTile(
          title: const Text('By submarine'),
          subtitle: const Text('Viajar por submarino'),
          value: Transportation.submarine,
          groupValue: selectectedTransportation,
          onChanged: (value) => setState(() {
            selectectedTransportation = Transportation.submarine;
          }),
        ),
      ],
    );
  }
}
