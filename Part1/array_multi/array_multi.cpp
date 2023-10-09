#include <iostream>

using namespace std;

int main() 
{
    const int rows_A = 2;
    const int cols_A = 3;
    const int rows_B = 3;
    const int cols_B = 2;

    int A[rows_A][cols_A] = { {1, 2, 3}, {4, 5, 6} };
    int B[rows_B][cols_B] = { {1, 2}, {3, 4}, {5, 6} };
    int result[rows_A][cols_B];

    // 执行矩阵乘法
    for (int i = 0; i < rows_A; i++) 
    {
        for (int j = 0; j < cols_B; j++) 
        {
            result[i][j] = 0;
            for (int k = 0; k < cols_A; k++) 
            {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    // 打印结果矩阵
    cout << "Matrix A:" << endl;
    for (int i = 0; i < rows_A; i++) 
    {
        for (int j = 0; j < cols_A; j++)
        {
            cout << A[i][j] << " ";
        }
        cout << endl;
    }

    cout << "Matrix B:" << endl;
    for (int i = 0; i < rows_B; i++)
    {
        for (int j = 0; j < cols_B; j++)
        {
            cout << B[i][j] << " ";
        }
        cout << endl;
    }

    cout << "Result of matrix multiplication:" << endl;
    for (int i = 0; i < rows_A; i++) 
    {
        for (int j = 0; j < cols_B; j++) 
        {
            cout << result[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
