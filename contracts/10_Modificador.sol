// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Modificador{
    address public propietario;
    uint256 private fondos;


    constructor (){
        propietario = msg.sender;
    }

    modifier esPropietario() {
        //_; (Lo q se hace es q primero se realiza todo el codigo de una funcion y 
        // luego llama al modifier)
        require(msg.sender == propietario, "No puedes ejecutar pq no eres el propietario del contrato");
        _; // (Aca primero llama al modifier y luego hace los pasos de la funcion)
    }
    
    //3 opciones: depositar, retirar, consultar

    function depositarFondos(uint256 _monto) public esPropietario{
        fondos = fondos + _monto;  //fondos += _monto;
    }


    function retirarFondos(uint256 _monto) public esPropietario{
        require(fondos >= _monto, "No tienes saldo suficiente para esta operacion");
        fondos = fondos - _monto;
    }

    function consultarFondos() public view returns (uint256){
        return fondos;
    }

    function limpiarFondos() public esPropietario{
        //require(msg.sender == propietario, "No puedes ejecutar pq no eres el propietario del contrato");
        fondos = 0;
    }
}