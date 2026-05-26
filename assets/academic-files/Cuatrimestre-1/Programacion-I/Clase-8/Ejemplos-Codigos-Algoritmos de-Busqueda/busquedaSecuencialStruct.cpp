#include <iostream>
#include <vector>
#include <string>

using namespace std;

// Definimos la estructura Alumno
struct Alumno {
    int legajo;
    string apellido;
    string nombre;
};

// Función de búsqueda secuencial por legajo
int buscarSecuencial(const vector<Alumno>& alumnos, int valor) {
    for (int i = 0; i < alumnos.size(); i++) {
        if (alumnos[i].legajo == valor) {
            return i; // Devuelve la posición donde se encontró
        }
    }
    return -1; // No se encontró
}

int main() {
    // Vector de alumnos
    vector<Alumno> alumnos = {
        {1001, "Gomez", "Lucas"},
        {1002, "Lopez", "Martina"},
        {1003, "Fernandez", "Santiago"},
        {1004, "Diaz", "Valentina"},
        {1005, "Perez", "Juan"}
    };

    int legajoBuscado;
    cout << "Ingrese el legajo a buscar: ";
    cin >> legajoBuscado;

    int pos = buscarSecuencial(alumnos, legajoBuscado);

    if (pos != -1) {
        cout << "Alumno encontrado: " 
             << alumnos[pos].apellido << ", " 
             << alumnos[pos].nombre << endl;
    } else {
        cout << "El legajo " << legajoBuscado << " no está en el vector." << endl;
    }

    return 0;
}
