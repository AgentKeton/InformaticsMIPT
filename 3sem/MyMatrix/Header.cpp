#include "Header.h"

#include <iostream>
#include <string>

SquareMatrix::SquareMatrix(int dim_) : dim(dim_) {
	arr2d = new double*[dim];
	for (int i = 0; i < dim; i++) {
		arr2d[i] = new double[dim];
	}

	for (int i = 0; i < dim; i++) {
		for (int j = 0; j < dim; j++) {
			arr2d[i][j] = 0;
		}
	}
}

SquareMatrix::~SquareMatrix() {
	for (int i = 0; i < dim; i++) {
		delete[] arr2d[i];
	}
	delete[] arr2d;
}

SquareMatrix::SquareMatrix(const SquareMatrix & M) {
	dim = M.dim;
	arr2d = new double *[M.dim];
	for (int i = 0; i < dim; i++) {
		arr2d[i] = new double[dim];
	}
	for (int i = 0; i < dim; i++) {
		for (int j = 0; j < dim; j++) {
			arr2d[i][j] = M.arr2d[i][j];
		}
	}
}

void SquareMatrix:: createMatrix() {
	for (int i = 0; i < dim; i++) {
		/*std::string s;
		std::getline(std::cin, s);*/

		for (int j = 0; j < dim; j++) {
			double n;
			std::cin >> n;
			arr2d[i][j] = n;
		}
	}
}

void SquareMatrix:: PrintMatrix() {
	for (int i = 0; i < dim; i++) {
		for (int j = 0; j < dim; j++) {
			std::cout << arr2d[i][j] << ' ';
		}
		std::cout << "  " << std::endl;
	}
}


/*SquareMatrix SquareMatrix::operator*(const SquareMatrix & M, const int & t) {
SquareMatrix MulMatrix(M.dim);
for (int i = 0; i < M.dim; i++) {
for (int j = 0; j < M.dim; j++) {
MulMatrix.arr2d[i][j] = t*M.arr2d[i][j];
}
}
return MulMatrix;
}*/

/*SquareMatrix SquareMatrix::operator*(const double & t, const SquareMatrix & M) {
SquareMatrix MulMatrix(M.dim);
for (int i = 0; i < M.dim; i++) {
for (int j = 0; j < M.dim; j++) {
MulMatrix.arr2d[i][j] = t*M.arr2d[i][j];
}
}
return MulMatrix;
}*/

//std::ostream &operator<<(std::ostream &stream, const SquareMatrix & M) {}
