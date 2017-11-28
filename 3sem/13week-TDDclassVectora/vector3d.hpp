#ifndef VECTOR3D_H
#define VECTOR3D_H


#include <iostream>
#include <math.h>

class vector3d {
private:
	friend vector3d operator*(const vector3d & V, const double & n);
	friend vector3d operator*(const double & n, const vector3d & V);
	friend std::ostream &operator<<(std::ostream &stream, const vector3d & V);

public:
	double x, y, z;

    const static vector3d X;
    const static vector3d Y;
    const static vector3d Z;
    const static vector3d ZERO;

	vector3d(): x(0), y(0), z(0) {}
	vector3d(double _x,double _y, double _z): x(_x), y(_y), z(_z) {}

	vector3d operator+(const vector3d & added) { return vector3d(x + added.x, y + added.y, z + added.z); }
	vector3d operator-(const vector3d & subtrahend) { return vector3d(x - subtrahend.x, y - subtrahend.y, z - subtrahend.z); }
	vector3d operator=(const vector3d & other) { x = other.x; y = other.y; z = other.z;  return *this; }
	
	bool operator ==(const vector3d & other) {
		if (x == other.x && y == other.y && z == other.z) return true;
		else return false;
	}
	bool operator!=(const vector3d & other) {
		if (x != other.x || y != other.y || z != other.z) return true;
		else return false;
	}
	double operator*(const vector3d & other) { return (x*other.x + y*other.y + z*other.z); }
	double length() { return sqrt(x*x+y*y+z*z); }
	vector3d normalize() {
		x = x / this->length();
		y = y / this->length();
		z = z / this->length();
		return *this;
	}
	vector3d operator^(const vector3d & other) {
		return vector3d(y*other.z - z*other.y, z*other.x - x*other.z, x*other.y - y*other.z);
	}

};


vector3d operator*(const vector3d & V, const double & n) { return vector3d(n*V.x, n*V.y, n*V.z); }
vector3d operator*(const double & n, const vector3d & V) { return vector3d(n*V.x, n*V.y, n*V.z); }


std::ostream &operator<<(std::ostream &stream, const vector3d & V) {
	return (stream << "{" << V.x << ',' << V.y << ',' << V.z << "}");
}

#endif
