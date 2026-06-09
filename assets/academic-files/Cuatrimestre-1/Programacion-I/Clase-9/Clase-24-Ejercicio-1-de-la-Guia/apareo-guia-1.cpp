#include <iostream>
using namespace std;

struct inscripciones{
    int numeroLegajo;
    int codigoMateria;
    string apellido;
};

void inscripcionesAfinales(inscripciones vecA[], int n,
     inscripciones vecB[], int m, inscripciones vecC[], int &k)
     {
        int i = 0, j = 0;
        k = 0;

        while(i < n && j < m){
            if(vecA[i].codigoMateria < vecB[j].codigoMateria){
                vecC[k] = vecA[i];
                i++;
            }
            else{
                vecC[k] = vecB[j];
                j++;
            }
            k++;
        }

        while(i < n){
            vecC[k] = vecA[i];
             i++;
             k++;
        }
        while(j < m){
            vecC[k] = vecB[j];
            j++;
            k++;
        }
     }

int main(){
    int iteradorK = 0;

    inscripciones MAESTROFINALES[1000] = {
        {1003, 101, "Alvarez Juan"},
        {1011, 102, "Benitez Martina"},
        {1025, 101, "Castro Diego"},
        {1038, 104, "Diaz Sofia"},
        {1052, 103, "Fernandez Lucas"},
        {1067, 102, "Garcia Valentina"},
        {1084, 105, "Gomez Nicolas"},
        {1096, 101, "Herrera Camila"},
        {1110, 104, "Lopez Mateo"},
        {1127, 103, "Martinez Agustina"},
        {1143, 105, "Morales Tomas"},
        {1159, 102, "Navarro Julieta"},
        {1175, 106, "Pereyra Santiago"},
        {1192, 104, "Ramirez Emilia"},
        {1210, 103, "Rodriguez Lautaro"}
    };

    inscripciones DIAFINALES[30] = {
        {1007, 201, "Aguirre Mateo"},
        {1016, 203, "Barrios Juliana"},
        {1031, 202, "Cabrera Tomas"},
        {1044, 205, "Dominguez Clara"},
        {1058, 204, "Escobar Franco"},
        {1073, 201, "Farias Camila"},
        {1089, 206, "Gutierrez Bruno"},
        {1102, 203, "Ibarra Sofia"},
        {1118, 202, "Juarez Valentina"},
        {1135, 205, "Luna Ignacio"},
        {1149, 204, "Mendez Martina"},
        {1164, 206, "Ortega Nicolas"},
        {1181, 201, "Paz Emilia"},
        {1197, 203, "Rojas Santiago"},
        {1215, 202, "Suarez Abril"}
    };

    inscripciones FINALESACT[1000];

    inscripcionesAfinales(MAESTROFINALES,15, DIAFINALES, 15,FINALESACT, iteradorK);

    for (int i = 0; i < iteradorK; i++)
    {
        cout << "Codigo Materia: " << FINALESACT[i].codigoMateria <<
        " Cod. Alumno: " << FINALESACT[i].numeroLegajo <<
        " Nombre: " << FINALESACT[i].apellido <<
        endl <<
        "------------------------------------------------" << endl;
    }
    
}