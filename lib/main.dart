import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nico_web/widgets/button.dart';
import 'package:flutter_nico_web/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xff181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hey, SeokHwan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                              fontSize: 18,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Total balance',
                    style: TextStyle(
                        fontSize: 22, color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          bgColor: Color(0xfff1b33b),
                          textColor: Colors.black),
                      Button(
                          text: 'Request',
                          bgColor: Color(0xff1f2123),
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    order: 1,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    order: 2,
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: ' 428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
