#include "Header.h"

#include <iostream>
#include <string>


int main() {
	SquareMatrix matr1(2), matr2(2), matr3(2);
	matr1.createMatrix();
	//matr1.createMatrix();
	matr2.createMatrix();
	//matr3 = matr1 - matr2;
	double n = 2;
	matr3 = matr2*matr1;
	matr3.PrintMatrix();

	system("pause");
	return 0;
}
