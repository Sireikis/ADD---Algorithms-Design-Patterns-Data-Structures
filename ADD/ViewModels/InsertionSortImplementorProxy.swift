//
//  InsertionSortImplementorProxy.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/2/21.
//

import Foundation


class InsertionSortImplementorProxy: AlgorithmImplementor {
    var implementor: InsertionSortImplementor?
    
    func getSummaryFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.getSummaryFor(file: file)
        } else {
            return implementor!.getSummaryFor(file: file)
        }
    }
    
    func getExplanationFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.getExplanationFor(file: file)
        } else {
            return implementor!.getExplanationFor(file: file)
        }
    }
    
    func getCodeExampleFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.getCodeExampleFor(file: file)
        } else {
            return implementor!.getCodeExampleFor(file: file)
        }
    }
    
    func getExampleProblemFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.getExampleProblemFor(file: file)
        } else {
            return implementor!.getExampleProblemFor(file: file)
        }
    }
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        if implementor == nil {
            implementor = InsertionSortImplementor(InsertionSort())
            return implementor!.isFileAvailable(file, for: page)
        } else {
            return implementor!.isFileAvailable(file, for: page)
        }
    }
}
