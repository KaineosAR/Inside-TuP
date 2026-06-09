#include <iostream>
using namespace std;

struct inscripciones{
    int codigoMateria;
    int numeroLegajo;
    string apellido;
};

void inscripcionesAfinales(inscripciones MAESTROFINALES[], int n,
     inscripciones DIAFINALES[], int m, inscripciones FINALESACT[], int &k)
     {
        int i = 0, j = 0;
        k = 0;

        while(i < n && j < m){
            if(MAESTROFINALES[i].codigoMateria < DIAFINALES[j].codigoMateria){
                FINALESACT[k] = MAESTROFINALES[i];
                i++;
            }
            else{
                FINALESACT[k] = DIAFINALES[j];
                j++;
            }
            k++;
        }

        while(i < n){
            FINALESACT[k] = MAESTROFINALES[i];
             i++;
             k++;
        }
        while(j < m){
            FINALESACT[k] = DIAFINALES[j];
            j++;
            k++;
        }
     }