import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegeterain = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String desciption,
      bool currentValue, Function(bool)? updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(desciption),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your filters"),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Adjust your meal filters!",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                    'Gluten-Free',
                    'Only show gluten-free meals',
                    _glutenFree,
                    (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'vegeterian',
                    'Only show vegeterian meals',
                    _vegeterain,
                    (newValue) {
                      setState(() {
                        _vegeterain = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegan',
                    'Only show vegan meals',
                    _vegan,
                    (newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Lactose-Free',
                    'Only show Lactose-Free meals',
                    _lactoseFree,
                    (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
