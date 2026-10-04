// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ComplejosBytes {
    bytes public datos; //No es lo mismo q decir bytes32

    function guardarComoBytes(bytes memory _datos) public {
        datos = _datos;
    }

    function guardarComoTexto(string memory texto) public {
        datos = bytes(texto);
    }

    function obtenerDatosComoString() public view returns (string memory){
        return string(datos);
    } 
}