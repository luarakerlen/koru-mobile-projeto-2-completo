import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _result = "resposta";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _result = _counter.toString();
    });
  }

  void _desafio1() {
    int numeroA = 9;
    int numeroB = 6;

    int maiorNumero;

    if (numeroA > numeroB) {
      maiorNumero = numeroA;
    } else {
      maiorNumero = numeroB;
    }

    setState(() {
      _result = maiorNumero.toString();
    });
  }

  void _desafio2() {
    int numeroA = 9;
    int numeroB = 6;
    int numeroC = 11;

    int soma = numeroA + numeroB;
    String frase;

    if (soma > numeroC) {
      frase = '$soma é maior do que C ($numeroC)';
    } else {
      frase = '$soma é menor do que C ($numeroC)';
    }

    setState(() {
      _result = frase;
    });
  }

  void _desafio3() {
    int numero = 3;

    int fatorial = numero;

    for (int i = numero - 1; i > 0; i--) {
      fatorial = fatorial * i;
    }

    setState(() {
      _result = 'O fatorial de $numero é $fatorial';
    });
  }

  void _desafio4() {
    int numero = -9;

    String positivoOuNegativo;
    String parOuImpar;

    if (numero > 0) {
      positivoOuNegativo = 'positivo';
    } else {
      positivoOuNegativo = 'negativo';
    }

    if (numero % 2 == 0) {
      parOuImpar = 'par';
    } else {
      parOuImpar = 'impar';
    }

    setState(() {
      _result = 'O número $numero é $positivoOuNegativo e $parOuImpar';
    });
  }

  void _desafio5() {
    int numeroA = 7;
    int numeroB = 7;

    int resultado;

    if (numeroA == numeroB) {
      resultado = numeroA + numeroB;
    } else {
      resultado = numeroA * numeroB;
    }

    setState(() {
      _result = resultado.toString();
    });
  }

  void _desafio6() {
    int numero = 8;

    int antecessor = numero - 1;
    int sucessor = numero + 1;

    setState(() {
      _result = 'Antecessor: $antecessor - Sucessor: $sucessor';
    });
  }

  void _desafio7() {
    double salarioMinimo = 1412;
    double salarioFuncionario = 3000;

    double salarios = salarioFuncionario / salarioMinimo;
    String salariosFixed = salarios.toStringAsFixed(2);

    setState(() {
      _result = 'Esse funcionário ganha $salariosFixed salários.';
    });
  }

  void _desafio8() {
    List<int> numeros = [2, 3, 6];
    numeros.sort((b, a) => a.compareTo(b));

    setState(() {
      _result = numeros.toString();
    });
  }

  void _desafio9() {
    List<int> notas = [6, 8, 2];

    int qtdNotas = notas.length;
    int soma = 0;

    for (int i = 0; i < notas.length; i++) {
      soma = soma + notas[i];
    }

    double media = soma / qtdNotas;
    String mediaFixed = media.toStringAsFixed(2);

    String status;
    if (media >= 7) {
      status = 'aprovado';
    } else {
      status = 'reprovado';
    }

    setState(() {
      _result = 'Média: $mediaFixed. Aluno $status.';
    });
  }

  void _desafio10() {
    String nome = 'Luara';
    int idade = 29;

    String maioridade;

    if (idade < 18) {
      maioridade = 'menor';
    } else {
      maioridade = 'maior';
    }

    setState(() {
      _result = '$nome é $maioridade de idade.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Resultado:',
            ),
            Text(
              _result,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _desafio10,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
