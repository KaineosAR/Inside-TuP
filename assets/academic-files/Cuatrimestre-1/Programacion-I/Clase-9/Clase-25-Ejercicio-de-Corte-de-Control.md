#include <iostream>
using namespace std;


struct Presentismo
{
    int legajo;
    int fecha;
    bool presente;
};

void listarPresentismo(Presentismo vec[], int n)
{
    int i = 0;
    int ausentes = 0;
    int ausentesTotales = 0;
    int ausentesDeFecha = 0;
    int key;
    int keyFecha;
    
    while (i < n)
    {
       
        key = vec[i].legajo;
        
        ausentes = 0;
        
        while (i < n && key == vec[i].legajo)
        {
            keyFecha = vec[i].fecha;
            ausentesDeFecha = 0;

            while (i < n && key == vec[i].legajo && keyFecha == vec[i].fecha){

                if (vec[i].presente == false)
                {
                    ausentes++;
                }
                i++;
            }
            if (ausentes > 0) ausentesDeFecha++;
            // Muestro resultados de sub sub lote
        
        }
        // Mostramos resultados por cada sublote (legajo)
        ausentesTotales = ausentesTotales + ausentes;
        cout << "Legajo : " << key << " faltas : " << ausentes << endl;
        cout << "ausente por fecha" << ausentesDeFecha;
    }
    // Mostramos resultados generales
    cout << "Ausentes totales: " << ausentesTotales;
}


int main(){
     Presentismo asistencias[30] = {
        // Legajo 1001 (Presente, Ausente, Presente)
        {1001, 20260601, true}, {1001, 20260601, false}, {1001, 20260603, true},
        // Legajo 1002 (Ausente x3)
        {1002, 20260601, false}, {1002, 20260602, false}, {1002, 20260602, false},
        // Legajo 1005 (Presente x3)
        {1005, 20260601, true}, {1005, 20260601, true}, {1005, 20260601, true},
        // Legajo 1008 (Ausente, Presente, Presente)
        {1008, 20260601, false}, {1008, 20260601, true}, {1008, 20260601, true},
        // Legajo 1012 (Presente x2, Ausente)
        {1012, 20260601, true}, {1012, 20260602, true}, {1012, 20260602, false},
        // Legajo 1015 (Ausente, Ausente, Presente)
        {1015, 20260601, false}, {1015, 20260602, false}, {1015, 20260603, true},
        // Legajo 1020 (Presente x3)
        {1020, 20260601, true}, {1020, 20260602, true}, {1020, 20260603, true},
        // Legajo 1022 (Presente, Ausente, Ausente)
        {1022, 20260601, true}, {1022, 20260602, false}, {1022, 20260603, false},
        // Legajo 1025 (Ausente x3)
        {1025, 20260601, false}, {1025, 20260602, false}, {1025, 20260603, false},
        // Legajo 1030 (Presente x3)
        {1030, 20260601, true}, {1030, 20260602, true}, {1030, 20260603, true}
    };

    listarPresentismo(asistencias,30);


}