#include <iostream>
using namespace std;

int busquedaSecuencial(int vec[], int cant, int valor)
{
  for (int i = 0; i < cant; i++)
  {
    if (vec[i] == valor)
    {
      return i;
    }
  }
  return -1;
}

int main()
{
  int vec[31] = {12, 7, 78, 9, 4, 89, 56, 12, 7, 6};
  int cant = 10;

  // Pedir valor al usuario
  int valor;
  cout << "Ingrese un valor a buscar: ";
  cin >> valor;

  // Ejecutamos la búsqueda...
  int pos = busquedaSecuencial(vec, cant, valor);

  // Mostrar el resultado...
  if (pos != -1)
  {
    cout << "El valor " << valor << " se encontró en la posición " << pos << endl;
  }
}