//
//  ContentEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/14/21.
//

import Foundation
import SwiftUI


enum ContentEnum: String, CaseIterable, Identifiable {
    // Algorithms - Search
    case binarySearch, breadthFirstSearch, depthFirstSearch
    // Algorithms - Sort
    case insertionSort, selectionSort, mergeSort, quickSort
    // Design Patterns - Behavioral
    case command, observer, strategy
    // Design Patterns - Creational
    case abstractFactory, factoryMethod, singleton
    // Design Patterns - Structural
    case adapter, bridge, decorator, proxy
    // Data Structures - Linear
    case array, linkedList
    // Data Structures - Tree
    case binarySearchTree, binaryTree
    // Data Structures - Hash-based
    case hashList, hashTable
    // Data Structures - Graph
    case adjacencyList
    
    var image: String {
        switch self {
        case .binarySearch, .breadthFirstSearch, .depthFirstSearch:
            return "magnifyingglass"
        case .insertionSort, .selectionSort, .mergeSort, .quickSort:
            return "arrow.up.arrow.down"
        case .command, .observer, .strategy:
            return "gearshape.2"
        case .abstractFactory, .factoryMethod, .singleton:
            return "lightbulb"
        case .adapter, .bridge, .decorator, .proxy:
            return "square.grid.3x1.below.line.grid.1x2"
        case .array, .linkedList:
            return "arrow.left.and.right"
        case .binarySearchTree, .binaryTree:
            return "leaf"
        case .hashList, .hashTable:
            return "grid"
        case .adjacencyList:
            return "squareshape.controlhandles.on.squareshape.controlhandles"
        }
    }
    
    var imgForeground: Color {
        switch self {
        case .binarySearch, .breadthFirstSearch, .depthFirstSearch:
            return .green
        case .insertionSort, .selectionSort, .mergeSort, .quickSort:
            return .green
        case .command, .observer, .strategy:
            return .blue
        case .abstractFactory, .factoryMethod, .singleton:
            return .blue
        case .adapter, .bridge, .decorator, .proxy:
            return .blue
        case .array, .linkedList:
            return .red
        case .binarySearchTree, .binaryTree:
            return .red
        case .hashList, .hashTable:
            return .red
        case .adjacencyList:
            return .red
        }
    }
    
    var description: String {
        switch self {
        // Algorithms - Search
        case .binarySearch:
            return "Binary Search"
        case .breadthFirstSearch:
            return "Breadth First Search"
        case .depthFirstSearch:
            return "Depth First Search"
            
        // Algorithms - Sort
        //        case .bucketSort:
        //            return "Bucket Sort"
        //        case .countingSort:
        //            return "Counting Sort"
        //        case .heapSort:
        //            return "Heap Sort"
        case .insertionSort:
            return "Insertion Sort"
        case .mergeSort:
            return "Merge Sort"
        case .quickSort:
            return "Quick Sort"
        case .selectionSort:
            return "Selection Sort"
            
        // Design Patterns - Behavioral
        //        case .chainOfResponsibility:
        //            return "Chain of Responsibility"
        case .command:
            return "Command Pattern"
        //        case .iterator:
        //            return "Iterator"
        //        case .mediator:
        //            return "Mediator"
        //        case .memento:
        //            return "Memento"
        case .observer:
            return "Observer Pattern"
        //        case .state:
        //            return "State"
        case .strategy:
            return "Strategy Pattern"
        //        case .templateMethod:
        //            return "Template Method"
        //        case .visitor:
        //            return "Visitor"
        
        // Design Patterns - Creational
        case .abstractFactory:
            return "Abstract Factory Pattern"
        //        case .builder:
        //            return "Builder"
        case .factoryMethod:
            return "Factory Method Pattern"
        //        case .prototype:
        //            return "Prototype"
        case .singleton:
            return "Singleton Pattern"
            
        // Design Patterns - Structural
        case .adapter:
            return "Adapter Pattern"
        case .bridge:
            return "Bridge Pattern"
        //        case .composite:
        //            return "Composite"
        case .decorator:
            return "Decorator Pattern"
        //        case .facade:
        //            return "Facade"
        //        case .flyweight:
        //            return "Flyweight"
        case .proxy:
            return "Proxy Pattern"
            
        // Data Structures - Linear
        case .array:
            return "Array"
        case .linkedList:
            return "Linked List"
            
        // Data Structures - Tree
        case .binarySearchTree:
            return "Binary Search Tree"
        case .binaryTree:
            return "Binary Tree"
        //        case .heap:
        //            return "Heap"
        //        case .nAryTree:
        //            return "N-ary Tree"
        
        // Data Structures - Hash-based
        case .hashList:
            return "Hash List"
        case .hashTable:
            return "Hash Table"
          
        // Data Structures - Graph
        case .adjacencyList:
            return "Adjacency List"
        }
    }
    
    var id: String {
        rawValue
    }
}
