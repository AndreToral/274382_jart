// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ComplejosString {
    string private saludo = "hola";
    bytes public datos; //No es lo mismo q decir bytes32

    function cambiarSaludo(string memory _saludo) public { //Un dato complejo te pide memory
        saludo = _saludo; 
    }

    function devolverSaludo() public view returns (string memory) {
        return saludo;
    }

    function concatenar(string memory _texto) public {
        //saludo = string(abi.encodePacked(saludo, " ", _texto));// no se usa como java saludo = saludo - nuevaCadena
        saludo = string.concat(saludo, " ", _texto);
    }

}