#ifndef header_H
#define header_H

#include <iostream>
#include <string>
//Квадратная матрица

class SquareMatrix {

private:
	//умножение на число
	friend SquareMatrix operator*(const SquareMatrix & M, const double & t);
	friend SquareMatrix operator*(const double & t, const SquareMatrix & M);

	friend std::ostream &operator<<(std::ostream &stream, const SquareMatrix & M);

protected:

public:
	int dim;
	double** arr2d = new double*[dim];

	SquareMatrix() : dim(0) {}
	SquareMatrix(int dim_) : dim(dim_) {
		for (int i = 0; i < dim; i++) {
			arr2d[i] = new double[dim];
		}
	}

	/*~SquareMatrix() {
	for (int i = 0; i < dim; i++) {
	delete[] arr2d[i];
	}
	delete[] arr2d;
	}*/

	void createMatrix() {
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

	void PrintMatrix() {
		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				std::cout << arr2d[i][j] << ' ';
			}
			std::cout << "  " << std::endl;
		}
	}


	SquareMatrix operator+(const SquareMatrix & other) {

		SquareMatrix SumMatrix(dim);

		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				SumMatrix.arr2d[i][j] = arr2d[i][j] + other.arr2d[i][j];
			}
		}
		return SumMatrix;
	}

	SquareMatrix operator-(const SquareMatrix & other) {
		SquareMatrix SumMatrix(dim);
		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				SumMatrix.arr2d[i][j] = arr2d[i][j] - other.arr2d[i][j];
			}
		}
		return SumMatrix;
	}

	SquareMatrix operator=(const SquareMatrix & other) {
		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				arr2d[i][j] = other.arr2d[i][j];
			}
		}
		return *this;
	}

	//умножение матриц
	SquareMatrix operator*(const SquareMatrix & other) {
		SquareMatrix MulMatrix(dim);
		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				MulMatrix.arr2d[i][j] = 0;
				for (int r = 0; r < dim; r++) {
					MulMatrix.arr2d[i][j] += arr2d[i][r] * other.arr2d[r][j];
				}
			}
		}
		return MulMatrix;
	}


};

/*SquareMatrix operator*(const SquareMatrix & M, const double & t) {
SquareMatrix MulMatrix(M.dim);
for (int i = 0; i < M.dim; i++) {
for (int j = 0; j < M.dim; j++) {
MulMatrix.arr2d[i][j] = t*M.arr2d[i][j];
}
}
return MulMatrix;
}

SquareMatrix operator*(const double & t, const SquareMatrix & M) {
SquareMatrix MulMatrix(M.dim);
for (int i = 0; i < M.dim; i++) {
for (int j = 0; j < M.dim; j++) {
MulMatrix.arr2d[i][j] = t*M.arr2d[i][j];
}
}
return MulMatrix;
}*/

//std::ostream &operator<<(std::ostream &stream, const SquareMatrix & M) {}



#endif
