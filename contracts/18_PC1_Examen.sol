// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.1;

contract Biblioteca274382 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 anio;
        string autor;
        bool estado;
    }

    Libro[] public libros;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _anio, string memory _autor, bool _estado) public {
        require(_id % 2 == 0, "No se permiten id impares");
        libros.push(Libro(_id, _titulo, _anio, _autor, _estado));
    }

    function contarElementos() public view returns (uint256) {
        return libros.length;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

    function inactivarElemento(uint256 _id) external {
        for (uint i = 0; i < libros.length; i++) {
            Libro storage lb = libros[i];

            if (lb.id == _id) {
                lb.estado = false;
            }
        }
    }
}
