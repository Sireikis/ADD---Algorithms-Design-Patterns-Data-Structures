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
            return SFSymbols.search
        case .insertionSort, .selectionSort, .mergeSort, .quickSort:
            return SFSymbols.sort
        case .command, .observer, .strategy:
            return SFSymbols.behavioral
        case .abstractFactory, .factoryMethod, .singleton:
            return SFSymbols.creational
        case .adapter, .bridge, .decorator, .proxy:
            return SFSymbols.structural
        case .array, .linkedList:
            return SFSymbols.linear
        case .binarySearchTree, .binaryTree:
            return SFSymbols.tree
        case .hashList, .hashTable:
            return SFSymbols.hashBased
        case .adjacencyList:
            return SFSymbols.graph
        }
    }
    
    var imgForeground: Color {
        switch self {
        case .binarySearch, .breadthFirstSearch, .depthFirstSearch:
            return ADDTheme.algorithmsTheme
        case .insertionSort, .selectionSort, .mergeSort, .quickSort:
            return ADDTheme.algorithmsTheme
        case .command, .observer, .strategy:
            return ADDTheme.designPatternsTheme
        case .abstractFactory, .factoryMethod, .singleton:
            return ADDTheme.designPatternsTheme
        case .adapter, .bridge, .decorator, .proxy:
            return ADDTheme.designPatternsTheme
        case .array, .linkedList:
            return ADDTheme.dataStructuresTheme
        case .binarySearchTree, .binaryTree:
            return ADDTheme.dataStructuresTheme
        case .hashList, .hashTable:
            return ADDTheme.dataStructuresTheme
        case .adjacencyList:
            return ADDTheme.dataStructuresTheme
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

// Properties that ContentFactory uses to initialize ConcreteContent
extension ContentEnum {
    
    var htmlFilePath: String {
        switch self {
        // Algorithms - Search
        case .binarySearch:
            return "www/Algorithms/Search/Binary Search/"
        case .breadthFirstSearch:
            return "www/Algorithms/Search/Breadth First Search/"
        case .depthFirstSearch:
            return "www/Algorithms/Search/Depth First Search/"
            
        // Algorithms - Sort
        case .insertionSort:
            return "www/Algorithms/Sort/Insertion Sort/"
        case .mergeSort:
            return "www/Algorithms/Sort/Merge Sort/"
        case .quickSort:
            return "www/Algorithms/Sort/Quick Sort/"
        case .selectionSort:
            return "www/Algorithms/Sort/Selection Sort/"
            
        // Design Patterns - Behavioral
        case .command:
            return "www/Design Patterns/Behavioral/Command Pattern/"
        case .observer:
            return "www/Design Patterns/Behavioral/Observer Pattern/"
        case .strategy:
            return "www/Design Patterns/Behavioral/Strategy Pattern/"
            
            // Design Patterns - Creational
        case .abstractFactory:
            return "www/Design Patterns/Creational/Abstract Factory Pattern/"
        case .factoryMethod:
            return "www/Design Patterns/Creational/Factory Method Pattern/"
        case .singleton:
            return "www/Design Patterns/Creational/Singleton Pattern/"
            
            // Design Patterns - Structural
        case .adapter:
            return "www/Design Patterns/Structural/Adapter Pattern/"
        case .bridge:
            return "www/Design Patterns/Structural/Bridge Pattern/"
        case .decorator:
            return "www/Design Patterns/Structural/Decorator Pattern/"
        case .proxy:
            return "www/Design Patterns/Structural/Proxy Pattern/"
            
            // Data Structures - Linear
        case .array:
            return "www/Data Structures/Linear/Array/"
        case .linkedList:
            return "www/Data Structures/Linear/Linked List/"
            
            // Data Structures - Tree
        case .binarySearchTree:
            return "www/Data Structures/Tree/Binary Search Tree/"
        case .binaryTree:
            return "www/Data Structures/Tree/Binary Tree/"
            
            // Data Structures - Hash-based
        case .hashList:
            return "www/Data Structures/Hash-based/Hash List/"
        case .hashTable:
            return "www/Data Structures/Hash-based/Hash Table/"
            
            // Data Structures - Graph
        case .adjacencyList:
            return "www/Data Structures/Graph/Adjacency List/"
        }
    }
    
    var name: String {
        switch self {
        // Algorithms - Search
        case .binarySearch:
            return "BinarySearch"
        case .breadthFirstSearch:
            return "BreadthFirstSearch"
        case .depthFirstSearch:
            return "DepthFirstSearch"
            
        // Algorithms - Sort
        case .insertionSort:
            return "InsertionSort"
        case .mergeSort:
            return "MergeSort"
        case .quickSort:
            return "QuickSort"
        case .selectionSort:
            return "SelectionSort"
            
        // Design Patterns - Behavioral
        case .command:
            return "CommandPattern"
        case .observer:
            return "ObserverPattern"
        case .strategy:
            return "StrategyPattern"
            
        // Design Patterns - Creational
        case .abstractFactory:
            return "AbstractFactoryPattern"
        case .factoryMethod:
            return "FactoryMethodPattern"
        case .singleton:
            return "SingletonPattern"
            
        // Design Patterns - Structural
        case .adapter:
            return "AdapterPattern"
        case .bridge:
            return "BridgePattern"
        case .decorator:
            return "DecoratorPattern"
        case .proxy:
            return "ProxyPattern"
            
        // Data Structures - Linear
        case .array:
            return "ArrayDS"
        case .linkedList:
            return "LinkedListDS"
            
        // Data Structures - Tree
        case .binarySearchTree:
            return "BinarySearchTreeDS"
        case .binaryTree:
            return "BinaryTreeDS"
            
        // Data Structures - Hash-based
        case .hashList:
            return "HashListDS"
        case .hashTable:
            return "HashTableDS"
            
        // Data Structures - Graph
        case .adjacencyList:
            return "AdjacencyListDS"
        }
    }
}
