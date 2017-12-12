#include "Header.h"

#include <iostream>

int main() {
	int n = 3;
	SquareMatrix matr(n);

	matr.createMatrix();
	matr.PrintMatrix();

	system("pause");
	return 0;
}
