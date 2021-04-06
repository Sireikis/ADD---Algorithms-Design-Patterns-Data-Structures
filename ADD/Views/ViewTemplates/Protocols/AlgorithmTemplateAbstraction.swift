//
//  AlgorithmTemplateAbstraction.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation


// Client + Abstraction
protocol AlgorithmTemplateAbstraction {
    var implementor: AlgorithmImplementor { get set }
}
