//
//  Utils.swift
//  TestChallenge
//
//  Created by Solid Jaum on 17/10/17.
//  Copyright © 2017 Augusto Henrique de Almeida Silva. All rights reserved.
//

import Foundation

class Utils{
    
    ///Carrega as frutinhas
    class func loadFruits(_ bundle : Bundle) -> [[String : Any]]{
        
        var fruits = [[String : Any]]()
        if let path = bundle.path(forResource: "fruits", ofType: "plist"){
            
            fruits = (NSArray(contentsOfFile: path) as? [[String : Any]])!
            
        }
        return fruits
        
    }
    
    ///
    class func buscaNomeFrutinhas(frutinhas : [[String : Any]], nomeFrutinha : String) -> Bool{
        
        for fruta in frutinhas{
            
            if (fruta["name"] as! String).lowercased() == nomeFrutinha.lowercased(){
                return true
            }
        }
 
        return false
    }
    
    ///
    class func verificaTipoFrutinhas(frutinhas : [[String : Any]], nomeFrutinha : String) -> String {
        
        for fruta in frutinhas{
            if (fruta["name"] as! String).lowercased() == nomeFrutinha.lowercased(){
                return fruta["group"] as! String
            }
        }
        
        return "Nao achei a fruta"
    }
    
    ///
    class func deletaFrutinha(frutinhas : [[String : Any]], nomeFrutinha : String) -> [[String : Any]] {
        
        var n = 0

        var frutas = frutinhas
        
        for fruta in frutas{

            if (fruta["name"] as! String).lowercased() == nomeFrutinha.lowercased(){
               frutas.remove(at: n)
                
                print("removeu")
                
                return frutas
            }
            
            n += 1
        }
        
        return frutas
        
    }
    
    
    
}
