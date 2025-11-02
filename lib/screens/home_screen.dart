import 'package:flutter/material.dart';

const Color evaGreen = Color(0xFF00FF00);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _counter = 0;


  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void _multiply() {
    setState(() {
      _counter *= 2;
    });
  }

  void _divide() {
    setState(() {
      _counter /= 2;
    });
  }

  void _reset() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmar Reseteo'),
        content:
            const Text('¿Está seguro de que desea reiniciar el contador a 0?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _counter = 0;
              });
              Navigator.pop(context);
            },
            child: const Text('Aceptar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador EVA 01'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Ver Info',
            onPressed: () {
              Navigator.pushNamed(context, 'info');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'Valor del Contador:',
                  style: TextStyle(fontSize: 24, color: Colors.white70),
                ),
                Text(
                  _counter.toStringAsFixed(
                      _counter.truncateToDouble() == _counter ? 0 : 2),
                  style: const TextStyle(
                      fontSize: 72, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                Slider(
                  value: _counter.clamp(-100.0, 100.0),
                  min: -100,
                  max: 100,
                  divisions: 200,
                  label: _counter.toStringAsFixed(1),
                  onChanged: (double newValue) {
                    setState(() {
                      _counter = newValue;
                    });
                  },
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: _increment,
                      icon: const Icon(Icons.add),
                      label: const Text('Sumar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: evaGreen,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(140, 45),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: _decrement,
                      icon: const Icon(Icons.remove),
                      label: const Text('Restar'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(140, 45),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: _multiply,
                      icon: const Text('x2',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      label: const Text('Multiplicar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: evaGreen,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(140, 45),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: _divide,
                      icon: const Text('/2',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      label: const Text('Dividir'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(140, 45),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                ElevatedButton.icon(
                  onPressed: _reset,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Resetear Contador'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    foregroundColor: Colors.white,
                    minimumSize:
                        const Size(double.infinity, 50),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}