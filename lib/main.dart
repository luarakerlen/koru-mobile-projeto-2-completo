import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
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

  void _desafio11() {
    int numero = 5;
    List<int> tabuada = [];

    for (int i = 1; i <= 10; i++) {
      tabuada.add(numero * i);
    }

    setState(() {
      _result = tabuada.toString();
    });
  }

  void _desafio12() {
    List<int> numeros = [2, 3, 6];
    List<int> quadrados = [];

    // Alternativa utilizando forEach (escolher apenas um ou outro)
    numeros.forEach((elemento) {
      int quadrado = elemento * elemento;
      quadrados.add(quadrado);
    });

    // Alternativa utilizando for normal (escolher apenas um ou outro)
    for (int i = 0; i < numeros.length; i++) {
      int quadrado = numeros[i] * numeros[i];
      quadrados.add(quadrado);
    }

    setState(() {
      _result = quadrados.toString();
    });
  }

  void _desafio13() {
    List<int> numeros = [2, 3, 6, 5, 65, 9, 6];
    int qtdPares = 0;
    int qtdImpares = 0;

    // Alternativa utilizando forEach (escolher apenas um ou outro)
    numeros.forEach((element) {
      if (element % 2 == 0) {
        qtdPares++;
      } else {
        qtdImpares++;
      }
    });

    // Alternativa utilizando for normal (escolher apenas um ou outro)
    for (int i = 0; i < numeros.length; i++) {
      if (numeros[i] % 2 == 0) {
        qtdPares++;
      } else {
        qtdImpares++;
      }
    }

    setState(() {
      _result = 'Pares: $qtdPares - Impares: $qtdImpares';
    });
  }

  void _desafio14() {
    List<int> numeros = [2, 3, 2, 5, 65, 9, 6];

    int menor = numeros.reduce(min);
    int maior = numeros.reduce(max);

    setState(() {
      _result = 'Menor: $menor - maior: $maior';
    });
  }

  void _desafio15() {
    int numero = 6;

    List<int> sequencia = [];

    for (int i = 0; i <= numero; i++) {
      sequencia.add(i);
    }

    setState(() {
      _result = sequencia.toString();
    });
  }

  void _desafio16() {
    String palavra = 'dado';

    String palavraAoContrario = palavra.split('').reversed.join();
    String frase;

    if (palavra == palavraAoContrario) {
      frase = 'A palavra $palavra é um palíndromo';
    } else {
      frase = 'A palavra $palavra não é um palíndromo';
    }

    setState(() {
      _result = frase;
    });
  }

  void _desafio17() {
    int numero = 7;
    String frase = '$numero é um número primo.';

    for (int i = 2; i < numero; i++) {
      if (numero % i == 0) {
        frase = '$numero não é um número primo.';
      }
    }

    setState(() {
      _result = frase;
    });
  }

  void _desafio18() {
    String palavra = 'eu';
    String frase = 'Eu posso posso eu eu tudo o mais que eu quiser Eu';

    List<String> palavras = frase.split(' ');

    var ocorrencias = palavras
        .where((element) => element.toLowerCase() == palavra.toLowerCase());

    int qtdOcorrencias = ocorrencias.length;

    setState(() {
      _result = 'A palavra "$palavra" aparece $qtdOcorrencias vezes';
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
        onPressed: _desafio18,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
