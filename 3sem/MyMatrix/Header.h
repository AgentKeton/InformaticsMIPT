

#ifndef header_H
#define header_H
//Квадратная матрица

#include <iostream>
#include <string>

class SquareMatrix {
private:

protected:
	int dim;
	int** arr2d;

public:
	SquareMatrix() : dim(0) {}
	SquareMatrix(int dim_) : dim(dim_) {
		arr2d = new int*[dim];
		for (int i = 0; i < dim; i++) {
			arr2d[i] = new int[dim];
		}
	}

	~SquareMatrix() {
		for (int i = 0; i < dim; i++) {
			delete arr2d[i];
		}
		delete arr2d;
	}

	void createMatrix() {
		for (int i = 0; i < dim; i++) {
			/*std::string s;
			std::getline(std::cin, s);*/

			for (int j = 0; j < dim; j++) {
				int n;
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
			std::cout << "  "<<std::endl;
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
};

#endif
