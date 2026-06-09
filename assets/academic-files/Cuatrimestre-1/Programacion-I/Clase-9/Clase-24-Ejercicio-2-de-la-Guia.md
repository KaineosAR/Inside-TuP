#include <iostream>
using namespace std;

struct StockEnLocal{
    int codigo;
    string autor;
    int stock;
    string titulo;
    string editorial;
    string genero;
};

struct StockEnDeposito{
    int codigo;
    int stock;
};

struct Faltante{
    int codigo;
    string observacion;
};


void apareoVectores(StockEnLocal vecA[], int n,
        StockEnDeposito vecB[], int m, Faltante vecC[], int &k){
            
    int i = 0, j = 0;
    k = 0;

    while(i < n && j < m){
        // MISMO CODIGO EN local Y depo
        if(vecA[i].codigo == vecB[j].codigo){
            // sin stock en depo y local
            if(vecA[i].stock == 0 && vecB[j].stock == 0){
                vecC[k].codigo = vecA[i].codigo;
                vecC[k].observacion = "Falta en local y en deposito";
                k++;
            }
            // sin stock solo en local
            else if(vecA[i].stock == 0){
                vecC[k].codigo = vecA[i].codigo;
                vecC[k].observacion = "Falta en local";
                k++;
            }
            // sin stock solo en depo
            else if(vecB[j].stock == 0){
                vecC[k].codigo = vecB[j].codigo;
                vecC[k].observacion = "Falta en depo";
                k++;
            }
            i++;
            j++;
        }
        // CODIGO DISTINTO EN LOCAL Y DEPO
        else if(vecA[i].codigo < vecB[j].codigo){
            if(vecA[i].stock == 0){
                vecC[k].codigo = vecA[i].codigo;
                vecC[k].observacion = "Falta en local";
                k++;
                i++;
            }
        }
        else{
            if(vecB[j].stock == 0){
                vecC[k].codigo = vecB[j].codigo;
                vecC[k].observacion = "Falta en deposito";
                k++;
                j++;
            }
        }
    }
        
    while(i < n){
        if (vecA[i].stock == 0){
            vecC[k].codigo = vecA[i].codigo;
            vecC[k].observacion = "Falta en local";
            k++;
        }
        i++;
    }

    while(j < m){
        if (vecB[j].stock == 0){
            vecC[k].codigo = vecB[j].codigo;
            vecC[k].observacion = "Falta en deposito";
            k++;
        }
        j++;
    }
}

int main(){
    int k = 20;
    Faltante faltantes[50];

    StockEnLocal stockLocal[50] = 
    {
        {1005, "Borges Jorge Luis", 0, "Ficciones", "Emecé", "Cuento"},
        {1018, "Cortazar Julio", 5, "Rayuela", "Sudamericana", "Novela"},
        {1032, "Garcia Marquez Gabriel", 12, "Cien años de soledad", "Sudamericana", "Realismo magico"},
        {1047, "Allende Isabel", 6, "La casa de los espiritus", "Plaza & Janes", "Novela"},
        {1061, "Orwell George", 10, "1984", "Debolsillo", "Distopia"},
        {1079, "Bradbury Ray", 7, "Fahrenheit 451", "Minotauro", "Ciencia ficcion"},
        {1094, "Shelley Mary", 4, "Frankenstein", "Penguin Clasicos", "Terror"},
        {1112, "Tolkien J. R. R.", 0, "El Hobbit", "Minotauro", "Fantasia"},
        {1130, "Christie Agatha", 11, "Asesinato en el Orient Express", "Planeta", "Policial"},
        {1146, "Huxley Aldous", 3, "Un mundo feliz", "Debolsillo", "Distopia"},
        {1163, "Hemingway Ernest", 6, "El viejo y el mar", "Debolsillo", "Novela"},
        {1185, "Saint-Exupery Antoine", 15, "El principito", "Salamandra", "Fabula"},
        {1201, "Austen Jane", 5, "Orgullo y prejuicio", "Penguin Clasicos", "Romance"},
        {1224, "Dumas Alexandre", 4, "El conde de Montecristo", "Alianza", "Aventura"},
        {1240, "Kafka Franz", 0, "La metamorfosis", "Losada", "Novela"}
    };

    StockEnDeposito StockDeposito[50] =
    {
        {1005, 20},
        {1018, 0},
        {1032, 30},
        {1047, 0},
        {1061, 25},
        {1079, 18},
        {1094, 9},
        {1112, 0},
        {1130, 27},
        {1146, 8},
        {1163, 0},
        {1185, 35},
        {1201, 11},
        {1224, 10},
        {1240, 19}
    };

    apareoVectores(stockLocal, 15, StockDeposito, 15, faltantes, k);

    if(k > 0){
        cout << "         Libros faltantes\n";
        cout << "Codigo\tObservacion\n";
    }

    for (int i = 0; i < k; i++)
    {
        cout << faltantes[i].codigo << "\t" << faltantes[i].observacion << "\n";
    }
    if (k > 0) cout << "Cantidad de libros en falta: " << k;
    
}