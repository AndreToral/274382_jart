// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract VariableSimples{
    uint256 private edad;  //por defecto, toma el valor cero

    constructor (uint256 _edad){
        edad = _edad;
    }
    
    function cambiarEdad(uint256 nuevaEdad) public {
        edad = nuevaEdad;
    }

    function devolverEdad() public view returns (uint256){
        return edad;
    }

}