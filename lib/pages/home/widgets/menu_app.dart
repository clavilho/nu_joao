import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          //color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png",
                height: 120,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(text: 'Banco ', children: [
                  TextSpan(
                      text: '260 - Nu Pagamentos S.A',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(text: 'Agencia ', children: [
                  TextSpan(
                      text: '0001',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(text: 'Conta ', children: [
                  TextSpan(
                      text: '0000000-0',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    ItemMenu(
                      icon: Icons.info_outline,
                      text: 'Me ajuda',
                    ),
                    ItemMenu(
                      icon: Icons.person_outline,
                      text: 'Perfil',
                    ),
                    ItemMenu(
                      icon: Icons.settings,
                      text: 'Configurar conta',
                    ),
                    ItemMenu(
                      icon: Icons.credit_card,
                      text: 'Configurar Cartão',
                    ),
                    ItemMenu(
                      icon: Icons.phone_android,
                      text: 'Configurações do APP',
                    ),
                    RaisedButton(
                      color: Colors.purple[800],
                      highlightColor: Colors.transparent,
                      elevation: 0,
                      disabledElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                      hoverElevation: 0,
                      splashColor: Colors.purple[900],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SAIR DO APP'),
                          Icon(
                            Icons.chevron_right,
                            size: 16,
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
