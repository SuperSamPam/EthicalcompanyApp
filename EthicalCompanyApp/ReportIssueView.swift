//
//  ReportIssueView.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import SwiftUI

struct ReportIssueView: View {
    @State private var issueDescription: String = ""
    @State private var issueSent = false

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Report an Issue")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("If you encountered incorrect data, app crashes, or any bugs, let us know and we'll fix it.")
                .font(.body)

            TextField("Describe the issue...", text: $issueDescription)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(height: 100, alignment: .top)
                .padding(.vertical, 10)

            if issueSent {
                Text("Thank you for reporting the issue! We value your feedback and will investigate promptly.")
                    .font(.subheadline)
                    .foregroundColor(.green)
            } else {
                Button(action: {
                    if !issueDescription.isEmpty {
                        issueSent = true
                    }
                }) {
                    Text("Submit Issue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(issueDescription.isEmpty ? Color.gray : Color.red)
                        .cornerRadius(8)
                }
                .disabled(issueDescription.isEmpty)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Report an Issue")
        .navigationBarTitleDisplayMode(.inline)
    }
}