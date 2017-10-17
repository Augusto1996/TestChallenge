//
//  PerformaceTests.swift
//  Tests
//
//  Created by Solid Jaum on 17/10/17.
//  Copyright © 2017 Augusto Henrique de Almeida Silva. All rights reserved.
//

import XCTest
@testable import TestChallenge

class PerformaceTests: XCTestCase {
    
    var fruits = [["name" : "Apple", "group" : "Morning"], ["name" : "Maca", "group" : "Afternoon"], ["name" : "Orange", "group" : "Midnight"], ["name" : "Banana", "group" : "Night"]]
    
    override func setUp() {
        super.setUp()
    }

    
    ///Verifica a performace do loading da tableView.
    func testPerformanceLoadFruits() {
        
        self.measure {
            _ = Utils.loadFruits(Bundle.main)
        }
    }
    
    ///Verifica a performace do loading da tableView.
    func testPerformanceBuscaNomeFrutinhas() {
        
        self.measure {
            _ = Utils.buscaNomeFrutinhas(frutinhas: fruits, nomeFrutinha: "orange")
        }
    }
    
    ///Verifica a performace do loading da tableView.
    func testPerformanceVerificaTipoFrutinhas() {
        
        self.measure {
            _ = Utils.verificaTipoFrutinhas(frutinhas: fruits, nomeFrutinha: "orange")
        }
    }
    
    ///Verifica a performace do loading da tableView.
    func testPerformanceDeletaFrutinhas() {
        
        self.measure {
            _ = Utils.deletaFrutinha(frutinhas: fruits, nomeFrutinha: "orange")
        }
    }
    
    
    
}

