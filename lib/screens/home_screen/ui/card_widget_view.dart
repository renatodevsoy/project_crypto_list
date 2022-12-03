import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardWidgetView extends StatefulWidget {
  String name;
  String symbol;
  String image;
  num currentPrice;
  num priceChangePercentage24h;
  CardWidgetView(
      {super.key,
      required this.name,
      required this.symbol,
      required this.image,
      required this.currentPrice,
      required this.priceChangePercentage24h});

  @override
  State<CardWidgetView> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidgetView> {
  @override
  Widget build(BuildContext context) {
    var currencyFormat = NumberFormat('##0.0#', 'pt_BR');
    var percentageFormat = NumberFormat('##0.##', 'pt_BR');

    return Card(
        color: Colors.white70,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(
            color: Colors.black26,
            width: 0.5,
          ),
        ),
        child: ListTile(
            leading: Image.network(widget.image),
            title: Text(widget.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text(widget.symbol.toUpperCase()),
            trailing: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'R\$: ${currencyFormat.format(widget.currentPrice)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  Text(
                    '${percentageFormat.format(num.parse(widget.priceChangePercentage24h.toString().substring(0, 5)))}%',
                    style: TextStyle(
                        color: widget.priceChangePercentage24h.isNegative
                            ? Colors.red
                            : Colors.green,
                        fontSize: 14),
                  )
                ],
              ),
            )));
  }
}
