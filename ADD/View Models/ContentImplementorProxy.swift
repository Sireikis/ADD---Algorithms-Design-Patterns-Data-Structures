//
//  ContentImplementorProxy.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/2/21.
//

import Foundation

// In order to make the proxy more general, a way to represent the content
// without instantiating it was needed. The ContentType enum was created for that purpose.
class ContentImplementorProxy: Implementor {
    private var implementor: ContentImplementor?
    private var content: ContentType
    
    private let contentFactory = ContentFactory()
    
    init(content: ContentType) {
        self.content = content
    }
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        if implementor == nil {
            implementor = contentFactory.getContent(content)
            return implementor!.isFileAvailable(file, for: page)
        } else {
            return implementor!.isFileAvailable(file, for: page)
        }
    }
    
    func getSummaryFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = contentFactory.getContent(content)
            return implementor!.getSummaryFor(file: file)
        } else {
            return implementor!.getSummaryFor(file: file)
        }
    }
    
    func getExplanationFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = contentFactory.getContent(content)
            return implementor!.getExplanationFor(file: file)
        } else {
            return implementor!.getExplanationFor(file: file)
        }
    }
    
    func getCodeExampleFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = contentFactory.getContent(content)
            return implementor!.getCodeExampleFor(file: file)
        } else {
            return implementor!.getCodeExampleFor(file: file)
        }
    }
    
    func getExampleProblemFor(file: FileNumber) -> URLRequest {
        if implementor == nil {
            implementor = contentFactory.getContent(content)
            return implementor!.getExampleProblemFor(file: file)
        } else {
            return implementor!.getExampleProblemFor(file: file)
        }
    }
}
