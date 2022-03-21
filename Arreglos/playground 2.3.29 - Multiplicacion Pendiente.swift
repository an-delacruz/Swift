import Foundation

var A = [[2, 0, 1],
        [3, 0, 0],
        [5, 1, 1]]
var B = [[1, 0, 1],
        [1, 2, 1],
        [1, 1, 0]]
var suma:[[Int]]=[[0, 0, 0],
                [0, 0, 0],
                [0, 0, 0]];
var resta:[[Int]]=[[0, 0, 0],
                [0, 0, 0],
                [0, 0, 0]];
for i in 0..<A.count {
    for j in 0..<A[i].count {
        let aux = A[i][j] + B[i][j]
        let aux1 = A[i][j] - B[i][j]
        suma[i][j] = aux;
        resta[i][j] = aux1;
    }
}

print("Resta");
for i in 0..<resta.count {
    print(resta[i]);
}
print("Suma");
for i in 0..<suma.count {
    print(suma[i]);
}

var multiplicacion = [
    [
        A[0][0] * B[0][0] + A[0][1] * B[1][0] + A[0][2] * B[2][0],
        A[0][0] * B[0][1] + A[0][1] * B[1][1] + A[0][2] * B[2][1],
        A[0][0] * B[0][2] + A[0][1] * B[1][2] + A[0][2] * B[2][2],
        ],
    [
        A[1][0] * B[0][0] + A[1][1] * B[1][0] + A[1][2] * B[2][0],
        A[1][0] * B[0][1] + A[1][1] * B[1][1] + A[1][2] * B[2][1],
        A[1][0] * B[0][2] + A[1][1] * B[1][2] + A[1][2] * B[2][2],
        ],    
    [
        A[2][0] * B[0][0] + A[2][1] * B[1][0] + A[2][2] * B[2][0],
        A[2][0] * B[0][1] + A[2][1] * B[1][1] + A[2][2] * B[2][1],
        A[2][0] * B[0][2] + A[2][1] * B[1][2] + A[2][2] * B[2][2],
        ]
    ]

print("Multiplicacion");
for i in 0..<multiplicacion.count {
    print(multiplicacion[i]);
}









