//
//  SortAlgorithmEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum SortAlgorithm: String, CaseIterable, Identifiable {
    // Planned content
    // case bucketSort, countingSort, heapSort

    case insertionSort, selectionSort, mergeSort, quickSort
    
    var image: String {
        return "arrow.up.arrow.down"
    }
    
    var imgForeground: Color {
        return .green
    }
    
    var description: String {
        /*
         switch self {
         case .bucketSort:
             return "Bucket Sort"
         case .countingSort:
             return "Counting Sort"
         case .heapSort:
             return "Heap Sort"
         }
         */
        switch self {
        case .insertionSort:
            return "Insertion Sort"
        case .mergeSort:
            return "Merge Sort"
        case .quickSort:
            return "Quick Sort"
        case .selectionSort:
            return "Selection Sort"
        }
    }
    
    var id: UUID {
        return UUID()
    }
}
