# Control de Gastos en COBOL

**Control de Gastos** es un programa educativo escrito en [COBOL](https://es.wikipedia.org/wiki/COBOL) que permite registrar los movimientos diarios dentro de un mes y calcular el saldo acumulado. Este proyecto está pensado para **aprender y practicar COBOL**, mostrando estructuras típicas del lenguaje y control de flujo.

---

## Características

- Elección del mes por parte del usuario.  
- Manejo de meses de **28, 30 y 31 días**.  
- Registro de **movimientos diarios** (gastos o ingresos).  
- Cálculo del saldo acumulado al final de cada día.  
- Finalización del programa mediante un valor especial de entrada.  
- Uso de estructuras típicas de COBOL: `PERFORM`, `EVALUATE`, `IF`, párrafos y `WORKING-STORAGE`.

---

## Ejemplo de uso
Introduce el número del mes: 7
SALDO MENSUAL 0
Introduce el importe: 100
EL MOVIMIENTO ES 100
DIA 1 DEL MES 7
...
DIA 31 DEL MES 7

---

## Instalación y ejecución

1. Clonar el repositorio:

git clone https://github.com/Miniquique/CalcularGastos.git

2. Compilar el programa con cobc (GNU COBOL):

cobc -x control-gastos.cob

3. Ejecutar el programa:

    ./control-gastos
