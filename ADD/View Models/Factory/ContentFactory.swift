//
//  ContentFactory.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import Foundation


// Factory
class ContentFactory {
    func getSortContent(_ contentType: SortAlgorithm) -> ContentImplementor {
        switch contentType {
        case .insertionSort:
            return ContentImplementor(InsertionSort())
        case .selectionSort:
            return ContentImplementor(SelectionSort())
        case .mergeSort:
            return ContentImplementor(MergeSort())
        case .quickSort:
            return ContentImplementor(QuickSort())
        }
    }
    
    func getSearchContent(_ contentType: SearchAlgorithm) -> ContentImplementor {
        switch contentType {
        case .binarySearch:
            return ContentImplementor(BinarySearch())
        case .breadthFirstSearch:
            return ContentImplementor(BreadthFirstSearch())
        case .depthFirstSearch:
            return ContentImplementor(DepthFirstSearch())
        }
    }
    
    func getBehavioralDPContent(_ contentType: BehavioralDP) -> ContentImplementor {
        switch contentType {
        case .command:
            return ContentImplementor(CommandPattern())
        case .observer:
            return ContentImplementor(ObserverPattern())
        case .strategy:
            return ContentImplementor(StrategyPattern())
        }
    }
    
    func getCreationalDPContent(_ contentType: CreationalDP) -> ContentImplementor {
        switch contentType {
        case .abstractFactory:
            return ContentImplementor(AbstractFactoryPattern())
        case .factoryMethod:
            return ContentImplementor(FactoryMethodPattern())
        case .singleton:
            return ContentImplementor(SingletonPattern())
        }
    }
    
    func getStructuralDPContent(_ contentType: StructuralDP) -> ContentImplementor {
        switch contentType {
        case .adapter:
            return ContentImplementor(AdapterPattern())
        case .bridge:
            return ContentImplementor(BridgePattern())
        case .decorator:
            return ContentImplementor(DecoratorPattern())
        case .proxy:
            return ContentImplementor(ProxyPattern())
        }
    }
    
    func getLinearDSContent(_ contentType: LinearDS) -> ContentImplementor {
        switch contentType {
        case .array:
            return ContentImplementor(ArrayDSLinear())
        case .linkedList:
            return ContentImplementor(LinkedListDSLinear())
        }
    }
    
    func getTreeDSContent(_ contentType: TreeDS) -> ContentImplementor {
        switch contentType {
        case .binarySearchTree:
            return ContentImplementor(BinarySearchTreeDS())
        case .binaryTree:
            return ContentImplementor(BinaryTreeDS())
        }
    }
    
    func getHashBasedDSContent(_ contentType: HashBasedDS) -> ContentImplementor {
    switch contentType {
    case .hashList:
        return ContentImplementor(HashListDS())
    case .hashTable:
        return ContentImplementor(HashTableDS())
    }
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
    
    // Methods that get other content types.
    //func getSearchContent(_ contentType: SearchAlgorithm) -> ContentImplementor { }
}
