//
//  ContentFactory.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import Foundation


// Factory
class ContentFactory {
    func getContent( _ contentType: ContentEnum) -> ContentImplementor {
        var content: ADDContent
        switch contentType {
        // Algorithms - Sort
        case .insertionSort:
            content = InsertionSort()
        case .selectionSort:
            content = SelectionSort()
        case .mergeSort:
            content = MergeSort()
        case .quickSort:
            content = QuickSort()
            
        // Algorithms - Search
        case .binarySearch:
            content = BinarySearch()
        case .breadthFirstSearch:
            content = BreadthFirstSearch()
        case .depthFirstSearch:
            content = DepthFirstSearch()
            
        // Design Patterns - Behavioral
        case .command:
            content = CommandPattern()
        case .observer:
            content = ObserverPattern()
        case .strategy:
            content = StrategyPattern()
            
        // Design Patterns - Creational
        case .abstractFactory:
            content = AbstractFactoryPattern()
        case .factoryMethod:
            content = FactoryMethodPattern()
        case .singleton:
            content = SingletonPattern()
            
        // Design Patterns - Structural
        case .adapter:
            content = AdapterPattern()
        case .bridge:
            content = BridgePattern()
        case .decorator:
            content = DecoratorPattern()
        case .proxy:
            content = ProxyPattern()
            
        // Data Structures - Linear
        case .array:
            content = ArrayDS()
        case .linkedList:
            content = LinkedListDS()
            
        // Data Structures - Tree
        case .binarySearchTree:
            content = BinarySearchTreeDS()
        case .binaryTree:
            content = BinaryTreeDS()
            
        // Data Structures - Hash-based
        case .hashList:
            content = HashListDS()
        case .hashTable:
            content = HashTableDS()
            
        // Data Structures - Graph
        case .adjacencyList:
            content = AdjacencyListDS()
        }
        
        return ContentImplementor(content)
    }
    
    func getTidBit(_ tidBit: TidBits) -> TidBitImplementor {
        switch tidBit {
        case .bigO:
            return TidBitImplementor(BigO())
        case .glossary:
            return TidBitImplementor(Glossary())
        case .whatIsADD:
            return TidBitImplementor(WhatIsADD())
        case .whatAreAlgorithms:
            return TidBitImplementor(WhatAreAlgorithms())
        case .whatAreClassifications:
            return TidBitImplementor(WhatAreClassifications())
        case .whatAreDesignPatterns:
            return TidBitImplementor(WhatAreDesignPatterns())
        case .DPCategories:
            return TidBitImplementor(DPCategories())
        case .whatAreDataStructures:
            return TidBitImplementor(WhatAreDataStructures())
        case .DSCategories:
            return TidBitImplementor(DSCategories())
        }
    }
}
