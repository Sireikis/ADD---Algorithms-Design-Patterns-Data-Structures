//
//  AlgorithmTabView.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI

// Client + Refined Abstraction
// Need to probably abstract this all into a factory.
struct AlgorithmTabView: View, AlgorithmTemplateAbstraction {
    var implementor: AlgorithmImplementor
    
    // Any AlgorithmImplementor can be paired with this TabView
    init(_ i: AlgorithmImplementor) {
        implementor = i
    }
    
    var body: some View {
        TabView {
            VStack {
                // Horizontal scrollable section that will link to alternate
                // summaries, explanations, code snippets, examples, etc when clicked.
                ScrollView(.horizontal) {
                    HStack {
                        Spacer()
                        ForEach((1...5), id: \.self) { number in
                            Text("\(number)")
                                .foregroundColor(.blue).padding(5)
                        }
                    }
                }
                
                // Summary Content
                ScrollView {
                    VStack {
                        //Text(implementor.summary())
                        
                        //Text(implementor.bigO())
                        
                        //Text(implementor.text)
                        
                        AttributedText(implementor.summary())
                    }
                }
            }
            .tabItem {
                Label("Summary", systemImage: "note.text")
            }
            
            Text("Explanation")
                .tabItem {
                    Label("Explanation", systemImage: "book.fill")
                }
            
            Text("Code")
                .tabItem {
                    Label("Code", systemImage: "curlybraces")
                }
            
            Text("Examples")
                .tabItem {
                    Label("Examples", systemImage: "info")
                }
        }
    }
}


struct AlgorithmTabView_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmTabView(InsertionSortImplementor(InsertionSort()))
    }
}
