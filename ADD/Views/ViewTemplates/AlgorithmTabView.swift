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
    // Test displays the actual HTML code.
    //let testHTML = Bundle.main.url(forResource: "www/Test", withExtension: "html")
    
    // TestHTML displays proper HTML.
    //let testHTML = Bundle.main.url(forResource: "www/TestHTML", withExtension: "html")
    
    // Images doesn't load, but it works!
    //let testHTML = Bundle.main.url(forResource: "www/ImageFile", withExtension: "html")
    
    // Images also don't load and there are some issues with the coloring of the table.
    let testHTML = Bundle.main.url(forResource: "www/ComplicatedTest", withExtension: "html")
    
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
                WebView(request: URLRequest(url: testHTML!))
                /*
                 // Summary Content
                 ScrollView {
                     //Text(implementor.summary())
                     
                     //Text(implementor.bigO())
                     
                     //Text(implementor.text)

                 WebView(request: URLRequest(url: testHTML!))
                 }
                 */
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
