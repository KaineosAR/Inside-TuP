#include <iostream>
using namespace std;

int busquedaPUP(int vec[], int dia)
{
  return vec[dia - 1];
}

int main()
{
  int dia;
  int ventas[15] = {2, 7, 7, 9, 4, 8, 5, 2, 7, 6, 5, 7, 8, 3, 9};

  cout << "Ingrese el día a buscar: ";
  cin >> dia;

  // Ejecutamos la búsqueda...
  int venta_actual = busquedaPUP(ventas, dia);
  cout << "Las ventas fueron " << venta_actual << " pesos " << endl;
}