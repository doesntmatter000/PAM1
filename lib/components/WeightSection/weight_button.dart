import 'package:flutter/material.dart';

class WeightButton extends StatefulWidget {
  final String value;
  final void Function(bool) changeWeight;

  const WeightButton({super.key, required this.value, required this.changeWeight});

  @override
  _WeightButtonState createState() => _WeightButtonState();
}

class _WeightButtonState extends State<WeightButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: const Text(
              "Weight",
              style: TextStyle(color: Color(0xFF888888)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: Text(
              widget.value,
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print(widget.value);
                    widget.changeWeight(true);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xFF4A6FD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    widget.changeWeight(false); // Folosim widget.changeWeight
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xFF4A6FD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
