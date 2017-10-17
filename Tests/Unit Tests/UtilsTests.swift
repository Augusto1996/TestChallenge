//
//  Tests.swift
//  Tests
//
//  Created by Solid Jaum on 17/10/17.
//  Copyright © 2017 Augusto Henrique de Almeida Silva. All rights reserved.
//

import XCTest
@testable import TestChallenge

class UtilsTests: XCTestCase {
    
    var fruits = [["name" : "Apple", "group" : "Morning"], ["name" : "Maca", "group" : "Afternoon"], ["name" : "Orange", "group" : "Midnight"], ["name" : "Banana", "group" : "Night"]]
    
    override func setUp() {
        super.setUp()
    }
    
    
    func testLoadFruits() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let fruits = Utils.loadFruits(Bundle.main)
        XCTAssert(fruits.count > 0, "Quantidade incorreta")
        
    }
    
    
    func testBuscaNomeFrutinhas(){
        
        let result = Utils.buscaNomeFrutinhas(frutinhas: fruits, nomeFrutinha: "apple")
        XCTAssert(result, "Nao foi encontrando")
    }
    
    
    func testVerificaTipoFrutinhas(){
        let result = Utils.verificaTipoFrutinhas(frutinhas: fruits, nomeFrutinha: "macas")
        XCTAssert(!result.isEmpty, "String vazia")
        
    }
    
    func testDeletaFrutinhas(){
        
        let result = Utils.deletaFrutinha(frutinhas: fruits, nomeFrutinha: "maca")
        XCTAssert(result.count != result.count - 1, "Nada foi deletado")
        
        
    }
    
    override func tearDown() {
        //fruits = nil
    }
    
    
}
