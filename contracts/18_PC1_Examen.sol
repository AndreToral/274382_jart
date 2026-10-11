// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.1;

contract Biblioteca274382 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 anio;
        string autor;
    }

    Libro[] public libros;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }
}
