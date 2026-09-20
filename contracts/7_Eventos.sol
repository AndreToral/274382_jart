// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Eventos {
    
    uint256 private cantidad = 20;
    
    // Declarar el evento con 3 parámetros
    event CambioValorCantidad(address invocador, uint256 valorAnterior, uint256 nuevoValor);

    function cambiarCantidad(uint256 _cantidad) public {
        // 1. Guardar el valor anterior en una variable local temporal
        uint256 valorAnterior = cantidad;
        cantidad = _cantidad;
        emit CambioValorCantidad(msg.sender, valorAnterior, cantidad);
    }
    
    function obtenerCantidad() public view returns (uint256) {
        return cantidad;
    }
}