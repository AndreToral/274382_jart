// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Sender{
    uint256 private cantidad = 20;
    address public cuentaInicial;   //guarda direcciones (especificamente el q deployó el contrato)

    constructor(uint256 _cantidad){
        cantidad = _cantidad;
        cuentaInicial = msg.sender; //dirección q interactúa con mi función
    }
    
    function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        //cuentaInicial = msg.sender;
    }
    
    function obtenerCantidad() public view returns (uint256 ){
        return cantidad;
    }


}