// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Intro{
    uint256 private edad;  //por defecto, toma el valor cero

    //Método que se ejecuta una sola vez
    constructor (uint256 _edad){
        edad = _edad;
    }
    
    function cambiarEdad(uint256 nuevaEdad) public {
        edad = nuevaEdad;
    }

    function devolverEdad() public view returns (uint256){
        return edad;
    }

    function sunmar(uint256 _valor1, uint256 _valor2) public pure returns (uint256) {
        return _valor1 + _valor2;
    }

}