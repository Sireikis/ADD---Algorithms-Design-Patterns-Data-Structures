//
//  SearchView.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/14/21.
//

import SwiftUI

// Would be better to implement this as a Trie
struct SearchView: View {
    
    let factory: ContentFactory
    
    @State var selection: String?
    @State var search: String = ""
    @State var content: [ContentEnum] = []
    
    // Fixes keyboard TidBit resizing bug
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    let searchArray: [(topic: String, contentType: ContentEnum)] = [
        // Algorithms - Search
        ("binary search", .binarySearch),
        ("breadth first search", .breadthFirstSearch),
        ("depth first search", .depthFirstSearch),
        // Algorithms - Sort
        ("insertion sort", .insertionSort),
        ("merge sort", .mergeSort),
        ("quick sort", .quickSort),
        ("selection sort", .selectionSort),
        // Design Patterns - Behavioral
        ("command pattern", .command),
        ("observer pattern", .observer),
        ("strategy pattern", .strategy),
        // Design Patterns - Creational
        ("abstract factory pattern", .abstractFactory),
        ("factory method pattern", .factoryMethod),
        ("singleton pattern", .singleton),
        // Design Patterns - Structural
        ("adapter pattern", .adapter),
        ("bridge pattern", .bridge),
        ("decorator pattern", .decorator),
        ("proxy pattern", .proxy),
        // Data Structures - Linear
        ("array", .array),
        ("linked list", .linkedList),
        // Data Structures - Tree
        ("binary search tree", .binarySearchTree),
        ("binary tree", .binaryTree),
        // Data Structures - Hash-based
        ("hash list", .hashList),
        ("hash table", .hashTable),
        // Data Structures - Graph
        ("adjacency list", .adjacencyList),
    ]
    
    var body: some View {
        // Allows List to update after every key press
        let binding = Binding<String>(
            get: {
                self.search
            },
            set: {
                self.search = $0
                searchResults(search)
            })
        
        List {
            TextField("Search", text: binding)
                .keyboardType(.alphabet)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.black)
            
            ForEach(content, id: \.self) { content in
                ZStack {
                    NavigationLink(
                        destination: LazyView(SimpleDefaultTabView(factory.getContent(content))
                                                .navigationBarTitle(content.description, displayMode: .inline)),
                        tag: content.description,
                        selection: $selection
                    ) {
                        NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                    }
                    
                    // Hides keyboard when navigating to topic
                    Button(action: {
                        hideKeyboard()
                    }, label: {
                        EmptyView()
                    })
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Search", displayMode: .inline)
        // Fixes keyboard TidBit resizing bug
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading:
                Button(action: {
                    hideKeyboard()
                    self.mode.wrappedValue.dismiss()
                }) {
                    Label("ADD", systemImage: SFSymbols.back)
                }
        )
    }
    
    func searchResults(_ search: String)  {
        let query = search.lowercased()
        content = []
        
        for result in searchArray {
            if result.topic.contains(query) {
                content.append(result.contentType)
            }
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    
    static var previews: some View {
        SearchView(factory: ContentFactory())
    }
}
