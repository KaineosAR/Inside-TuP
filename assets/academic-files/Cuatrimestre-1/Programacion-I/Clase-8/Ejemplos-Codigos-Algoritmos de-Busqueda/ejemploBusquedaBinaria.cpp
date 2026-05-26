#include <iostream>
using namespace std;

int busquedaBinaria(int vec[], int cant, int valor)
{
  // Cuando arranco evalúo todo el vector de 0 a cant-1
  int inicio = 0;
  int fin = cant -1;
    while (fin >= inicio) {
      int mitad = inicio + (fin - inicio) / 2;
      // Si el elemento es el del medio, devolvemos la posicion
      if (vec[mitad] == valor)
        return mitad ;

        // Si el elemento es menor entonces solo puede estar en la primer mitad
      if (vec[mitad] > valor) {
        fin = mitad - 1; //Cambio el limite superior
      } else {
        inicio = mitad + 1; // Cambio el limite inferior
      }
    }  
  return -1;
}

int main()
{
              // 0  1  2  3  4   5   6   7   8   9
  int vec[10] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 21};
  int cant = 10;

  // Pedir valor al usuario
  int valor;
  cout << "Ingrese un valor a buscar: ";
  cin >> valor;

  // Ejecutamos la búsqueda...
  int pos = busquedaBinaria(vec, cant, valor);

  // Mostrar el resultado...
  if (pos != -1)
  {
    cout << "El valor " << valor << " se encontró en la posición " << pos << endl;
  }
}