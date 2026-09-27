// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;
    bytes32 private saludo = hex"686F6C61";
    bytes32 private trabajo = hex"f7b7d6dd8d0646a61185e0de18e2e0cfc6039df38d5bccae3c1060c35bac8af9";
    string public textoGuardado = "60772400";
    address public direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //cuenta 1

    function pausar(bool _pausado) public {
        pausado = _pausado;
    }

    function opera() public view {
        require(pausado == false, "El contrato esta pausado");
        console.log("Aqui va toda la logica del funcion operar");
    }

    function devolverSaludo() public view returns (bytes32) {
        return saludo;
    }

    function validarTrabajo(string memory _trabajo) public view {
        bytes32 cadenaTemp = keccak256(abi.encodePacked(_trabajo));
        require (cadenaTemp == trabajo, "no es el mismo trabajo"); 
        console.log("Ejecucion de bloque por trabajo correcto");
    }

    function compararCadenas(bytes32 _textoHex) public view {
        bytes32 temporal = keccak256(abi.encodePacked(textoGuardado));
        require (_textoHex == temporal, "no es el mismo trabajo"); 
        console.log("Ejecucion de bloque por trabajo correcto");
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }
}