#include <iostream>
#include "vector3d.hpp"
#include <math.h>


int main() {
	vector3d v1;
	vector3d v2 = { 1,2,3 }, v3 = { 0, 1 / sqrt(2), 1 / sqrt(2) };
	std::cout << v1<<' '<<v2<<' '<< v1-v2 <<std::endl;
	v3.normalize();
	std::cout << v3 << std::endl;
	std::cout << (v3 == v1)<<std::endl;

	system("pause");
	return 0;
}
