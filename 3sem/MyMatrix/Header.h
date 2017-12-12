#ifndef header_H
#define header_H

#include <iostream>
#include <string>
//Квадратная матрица

class SquareMatrix {
private:
	//умножение на число
	//friend SquareMatrix operator*(const SquareMatrix & M, const int & t);
	//friend SquareMatrix operator*(const double & t, const SquareMatrix & M);
	//friend std::ostream &operator<<(std::ostream &stream, const SquareMatrix & M);

protected:

public:
	int dim;
	double** arr2d;

	SquareMatrix();
	SquareMatrix(int dim_);

	~SquareMatrix();

	//конструктор копий
	SquareMatrix(const SquareMatrix & M);

	void createMatrix();
	void PrintMatrix();

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
		SquareMatrix SumMatrix(other.dim);
		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				SumMatrix.arr2d[i][j] = arr2d[i][j] - other.arr2d[i][j];
			}
		}
		return SumMatrix;
	}
	SquareMatrix operator=(const SquareMatrix & other) {
		dim = other.dim;
		for (int i = 0; i < dim; i++) {
			for (int j = 0; j < dim; j++) {
				this->arr2d[i][j] = other.arr2d[i][j];
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

#endif
