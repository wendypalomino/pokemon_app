import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

// ignore: must_be_immutable
class BaseStats extends StatefulWidget {
  List<Stat> listStats =[];
  BaseStats(this.listStats);

  @override
  _BaseStatsState createState() => _BaseStatsState(listStats);
}

class _BaseStatsState extends State<BaseStats> {


  List<Stat> listStats =[];
  _BaseStatsState(this.listStats);

  List<Widget> getListOfBaseStatWidget (){
    List<BaseStatWidget>  listOfBaseStatWidget = [];
    for(var stat in listStats){
      BaseStatWidget baseStatWidget = BaseStatWidget(stat: stat);
      listOfBaseStatWidget.add(baseStatWidget);
    }
    return listOfBaseStatWidget;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getListOfBaseStatWidget(),
    );
  }
}





class BaseStatWidget extends StatelessWidget {

  final Stat stat;

  const BaseStatWidget({Key key, this.stat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color;
    if( stat.base >= 50){
      color = Colors.green;
    } else {
      color = Colors.red;
    }

    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
              child: Text('${stat.name}', style: TextStyle(color: Colors.grey),)),
          Expanded(
            flex: 1,
            child: Text('${stat.base}'),
          ),
          StepProgressIndicator(
            padding: 0,
            totalSteps: 109,
            currentStep: stat.base,
            selectedColor: color,
            unselectedColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
