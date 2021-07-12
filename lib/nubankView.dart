import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Nubank extends StatefulWidget {
  @override
  _NubankState createState() => _NubankState();
}

class _NubankState extends State<Nubank> {
  final pageController = PageController(
    initialPage: 1,
  );

  final pageView = PageView();

  var eyesBool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.purple,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          child: Image.asset(
                            'assets/logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Lucas',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 350,
                      height: 400,
                      color: Colors.white,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: pageController,
                        children: [
                          Column(
                            // PAGINA 1 //
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
                                width: 300,
                                height: 300,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Icon(Icons.credit_card),
                                        ),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Fatura fechada',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.red),
                                              ),
                                              Text(
                                                'R\$ 1.328,40',
                                                style: TextStyle(
                                                    fontSize: 36,
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'VENCIMENTO 25 MAI',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey[600]),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 145,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                          ),
                                          margin: EdgeInsets.only(bottom: 50),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Text(
                                              'PAGAR',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.red),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 8,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(50.0),
                                              ),
                                              color: Colors.orange,
                                            ),
                                          ),
                                          Container(
                                            color: Colors.red,
                                            width: 8,
                                            height: 60,
                                          ),
                                          Container(
                                            width: 8,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                bottom: Radius.circular(50.0),
                                              ),
                                              color: Colors.green,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.grey[100],
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.restaurant,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Container(
                                              child: Text(
                                                  "Compra mais recente em na bababoe no valor de R\$420,20"),
                                            ),
                                          ),
                                          Icon(Icons.arrow_right),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
                                width: 300,
                                height: 300,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 300,
                                      height: 50,
                                      margin: EdgeInsets.only(bottom: 50),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(MdiIcons.currencyBrl),
                                          Text(
                                            'NuConta',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (eyesBool == true) {
                                                  eyesBool = false;
                                                  return;
                                                }
                                                eyesBool = true;
                                              });
                                            },
                                            child: eyesBool == true
                                                ? Icon(
                                                    MdiIcons.eyeOutline,
                                                    size: 36,
                                                  )
                                                : Icon(
                                                    MdiIcons.eyeOffOutline,
                                                    size: 36,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Saldo disponível',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          eyesBool == true
                                              ? Text(
                                                  'R\$ 3000,00',
                                                  style:
                                                      TextStyle(fontSize: 30),
                                                )
                                              : Container(
                                                  width: 180,
                                                  height: 40,
                                                  color: Colors.grey[200],
                                                )
                                        ],
                                      ),
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.grey[100],
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.restaurant,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Container(
                                              child: Text(
                                                  "Compra em Bababoe Express-Conj de R\$69,56 no débito na segunda"),
                                            ),
                                          ),
                                          Icon(Icons.arrow_right),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
                                width: 300,
                                height: 300,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(MdiIcons.gift),
                                    Text(
                                      'Nubank Rewards',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviço que você realmente usa.',
                                        style: TextStyle(fontSize: 18),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    ElevatedButton(
                                      child: Text(
                                        'ATIVE SEU REWARDS',
                                        style: TextStyle(color: Colors.purple),
                                      ),
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        padding: MaterialStateProperty.all(
                                          EdgeInsets.all(20),
                                        ),
                                        textStyle: MaterialStateProperty.all(
                                          TextStyle(fontSize: 20),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero,
                                            side: BorderSide(
                                              color: Colors.purple[800],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.grey.shade50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 8,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          width: 120,
                          height: 100,
                          color: Colors.white24,
                        );
                      },
                      itemCount: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
