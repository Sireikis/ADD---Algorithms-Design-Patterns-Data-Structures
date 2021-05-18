//
//  SettingsView.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/17/21.
//

import SwiftUI
import MessageUI


struct SettingsView: View {
    @State var isShowingMailView = false
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var mailError = false
    
    var url: URL {
        // Change app ID from LifeStock to ADD!!
        guard let writeReviewURL = URL(string: "https://apps.apple.com/app/id1542466908?action=write-review")
        else { fatalError("Expected a valid URL") }
        return writeReviewURL
    }
    
    var body: some View {
        Form {
            Section(header: Text("Contact")) {
                Button(action: {
                    MFMailComposeViewController.canSendMail() ? isShowingMailView.toggle() : mailError.toggle()
                }) {
                    NavigationButton(description: "Submit Feedback", txtColor: .blue, image: "message.fill", imgForeground: .white, imgBackground: .green)
                }
                
                ZStack {
                    NavigationButton(description: "Write A Review", txtColor: .blue, image: "star.fill", imgForeground: .white, imgBackground: .yellow)
                    Link("", destination: url)
                }
            }
        }
        .navigationBarTitle("Settings", displayMode: .inline)
        .sheet(isPresented: $isShowingMailView) {
            MailComposer(result: $result)
        }
        .alert(isPresented: $mailError) {
            Alert(
                title: Text("Error"),
                message: Text("Can't send emails from this device. You must link an email account to the mail app."),
                dismissButton: .default(Text("Got it!"))
            )
        }
    }
}
