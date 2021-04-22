import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  final Function(int) onChangedStep;
  TermScreen({
    Key key,
    this.onChangedStep,
  }) : super(key: key);

  @override
  _TermScreenState createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  ScrollController _scrollController;
  bool _termsReaded = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
          _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termsReaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'terms & Condition',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur.  prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur.. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur.. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. Peu importe la façon dont vous choisissez de procéder, prenez toujours des mesures raisonnables pour vous assurer d’avoir rendu les conditions générales visibles et accessibles à l’utilisateur. '),
                      ],
                    ),
                  )),
              //Text('coucou'),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                color: Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                onPressed: !_termsReaded ? null : () => widget.onChangedStep(2),
                child: Text(
                  'accept & continue'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
