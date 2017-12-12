#include "Header.h"

#include <iostream>
#include <string>

int main() {
	SquareMatrix matr1(2), matr2(2), matr3(2);

	matr1.createMatrix();
	matr2.createMatrix();
	(matr1 + matr2).PrintMatrix();
	matr3.createMatrix();
	//matr3 = matr1 - matr2;
	//int n = 2;
	//matr3 = matr3*n;
	matr3 = matr3*matr3;
	matr3.PrintMatrix();
	//std::cout << matr3.arr2d[1][0];

	system("pause");
	return 0;
}
