#ifndef GENERATOR_H
#define GENERATOR_H
#endif // GENERATION_H
#include "Persone.h"
#include <fstream>
#include <chrono>
#include <random>
#include <set>
#include <cstdlib>
#include <ctime>



using namespace std;
class Generation
{
private:
    int Gender, lowAge, upAge;

public:

    //генерация случайного мужской фамилии
    QString GenerationSMname(int);

    //генерация случайного женской фамилии



    //генерация случайной мужскокой или женской фамилии


    //генерация случайного мужского имени
    QString GenerationMname(int);


    //генерация случайного женского имени


    //генерация случайного мужского или женского имени



    //генерация случайного мужского отчества
    QString GenerationPMname(int);


    //генерация случайного женского отчества



    //генерация случайного мужского или женского отчества


    //генрация случайного возраста
    unsigned int GenerationAge();

    //генерация случайного города
    QString GenerationCiti();


    //генерация случайной улицы
    QString GenerationStreet();

    //генерация случайной профессии
    QString GenerationProffesion();


    //генерация З/П
    unsigned int GenerationIncome();

    vector<Persone> GetPersonList(int);

    QString GenerationGender(int);

    void setAgeGran(int,int);

    void setGender(int);


};


