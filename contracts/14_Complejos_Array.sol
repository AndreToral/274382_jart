// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import "hardhat/console.sol";

contract ComplejosArray {
    uint32[] public montos; //indice inicial es 0

    function agregarMonto(uint32 _monto) public {
        montos.push(_monto);
    }

    function getMontos() public view returns (uint32[] memory){ // El view evita consumir gas innecesario
        return montos;
    }

    function devolverTamano() public view returns(uint256) {
        return montos.length;
    }

    function saludarTodos(string[] memory _nombres) public pure {
        for(uint i=0; i < _nombres.length; i++) {
            console.log("Hola: ", _nombres[i]);
        }

    }

    function sumar(uint256[] memory _numeros) public pure returns (uint256) {
        uint256 suma = 0;

        for (uint256 i = 0; i < _numeros.length; i++) {
        suma += _numeros[i];
        }

        console.log("La suma es:", suma);

        return suma;
    }
}