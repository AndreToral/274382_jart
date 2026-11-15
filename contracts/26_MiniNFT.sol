// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MiniNFT is ERC721, Ownable {
    //Imaginemos que cada id representa a un cuadro de arte
    uint256 private _nextTokenId;
    constructor() ERC721("Mi galeria de arte", "GAL")
        Ownable(msg.sender) {

    }

    //ID(1) Monalisa
    //ID(2) La ultima cena
    //ID(3) El grito de 
    //ID(4) Las meninas
    function crearCuadro(address _propietario) external onlyOwner{
        _safeMint(_propietario, ++_nextTokenId);
    }
/*
    function crearCuadro(address _propietario, uint256 _idCuadro) external onlyOwner{
        _safeMint(_propietario, _idCuadro);
    }
    */
}