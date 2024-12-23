//
//  RequestCompanyView.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import SwiftUI

struct RequestCompanyView: View {
    @State private var companyName: String = ""
    @State private var requestSent = false

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Request a Company")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Can't find a company you care about? Let us know and we'll consider adding it to our database.")
                .font(.body)

            TextField("Enter Company Name", text: $companyName)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            if requestSent {
                Text("Your request has been sent! We will review it and consider adding this company soon.")
                    .font(.subheadline)
                    .foregroundColor(.green)
            } else {
                Button(action: {
                    if !companyName.isEmpty {
                        requestSent = true
                    }
                }) {
                    Text("Send Request")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(companyName.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }
                .disabled(companyName.isEmpty)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Request a Company")
        .navigationBarTitleDisplayMode(.inline)
    }
}