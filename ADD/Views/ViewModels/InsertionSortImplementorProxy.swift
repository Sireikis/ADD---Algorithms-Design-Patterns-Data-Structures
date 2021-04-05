//
//  InsertionSortImplementorProxy.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/2/21.
//

import Foundation


class InsertionSortImplementorProxy: AlgorithmImplementor {
    var implementor: InsertionSortImplementor?
    
    func summary() -> URLRequest {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.summary()
        } else {
            return implementor!.summary()
        }
    }
    
    func codeExample() {
        
    }
    
    func explanation() -> URLRequest {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.explanation()
        } else {
            return implementor!.explanation()
        }
    }
    
    /*
     func getExplanationIn(file: FileNumber) -> URLRequest {
         if implementor == nil {
             implementor = InsertionSortImplementor(InsertionSort())
             return implementor!.getExplanationIn(file: file)
         } else {
             return implementor!.getExplanationIn(file: file)
         }
     }
     */
    
    func exampleProblem() {
        
    }
    
    
    
}
