#include <iostream>
#include <ctime>
#include <Eigen/Core>
#include <Eigen/Dense>

int main(int argc, char **argv){
    const int rows = 2, cols = 3;

    Eigen::Matrix<float, rows, cols> matrix_23 = Eigen::Matrix<float, rows, cols>::Random();
    
    std::cout << "\nprinting the whole array (random init) : \n\n" << matrix_23<<"\n\n";

    for(int i=0 ; i<rows; i++){
        for(int j=0; j<cols; j++){
            matrix_23(i, j) = i*j;
        }
    }

    for(int i=0; i<rows; i++){
        for(int j=0; j<cols; j++){
            std::cout<<"matrix["<<i<<","<<j<<"] : "<<matrix_23(i, j) << "\n";
        }
    }

    std::cout << "\nprinting the whole array : \n\n" << matrix_23<<"\n\n";

    std::cout << "\n\n array dims : array.rows() : " << matrix_23.rows() << " array.cols() : " << matrix_23.cols() << "\n\n";
}