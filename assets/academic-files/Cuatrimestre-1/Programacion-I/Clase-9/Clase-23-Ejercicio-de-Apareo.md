#include <iostream>
using namespace std;

int k = 100;

struct alumno{
    int codigo;
    string nombre;
    float promedio;
};

void apareo(alumno vecA[], int n, alumno vecB[], int m, alumno vecC[], int &k)
{

    int i = 0, j = 0;

    k = 0;

    while (i < n && j < m)
    {

        if (vecA[i].codigo < vecB[j].codigo)
        {

            vecC[k] = vecA[i];

            i++;
        }
        else
        {
            vecC[k] = vecB[j];
            j++;
        }

        k++;
    }
    while (i < n)
    {
        vecC[k] = vecA[i];
        i++;
        k++;
    }

    while (j < m)
    {
        vecC[k] = vecB[j];
        j++;
        k++;
    }
}

int main(){

    alumno alumnosBase2025[100]
     = {
        {1, "Juan Perez", 8.5},
        {102, "Maria Gomez", 9.2},
        {103, "Carlos Lopez", 7.8},
        {204, "Ana Martinez", 6.9},
        {505, "Lucia Fernandez", 8.1}
    };
    
    alumno alumnosBase2026[100] =
    {
        {101, "Sofia Ramirez", 9.4},
        {102, "Mateo Torres", 7.6},
        {103, "Valentina Ruiz", 8.9},
        {104, "Thiago Morales", 6.8},
        {105, "Camila Herrera", 9.1},
        {406, "Benjamin Castro", 7.3},
        {407, "Martina Silva", 8.2},
        {508, "Joaquin Medina", 6.5}
    };

    int totalIngresados;
    // Cargo los alumnos

    alumno alumnosTotales[100];

    apareo(alumnosBase2025, 5, alumnosBase2026, 8, alumnosTotales, totalIngresados);

    cout << "Se han procesado " << totalIngresados << " registros.";

    for (int i = 0; i < totalIngresados; i++)
    {
        cout << "Alumno: "<< alumnosTotales[i].nombre << endl;
        cout << "Codigo: "<< alumnosTotales[i].codigo << endl;
        cout << "Promedio: "<< alumnosTotales[i].promedio << endl;
        cout << "----------------------------------------"<< endl;
    }
    
}