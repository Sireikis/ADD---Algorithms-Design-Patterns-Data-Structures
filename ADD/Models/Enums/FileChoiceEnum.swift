 //
 //  FileChoiceEnum.swift
 //  ADD
 //
 //  Created by Ignas Sireikis on 4/2/21.
 //
 
 import Foundation
 
 // For use with DefaultTabView when that's implemented.
 
 enum FileNumber: Int, CaseIterable {
    case one = 1, two, three, four
 }
 
 enum Page: String {
    case Summary, Explanation, Code, Example
 }
