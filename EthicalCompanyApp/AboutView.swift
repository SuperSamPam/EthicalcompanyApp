//
//  AboutView.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/20/24.
//


import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // App Logo or Icon
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.top)

                // App Name and Version
                Text("Ethical Company App")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)

                Text("Version 1.0.0")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                // App Description
                Text("""
                EthicApp is your guide to making informed and ethical shopping decisions. We provide transparency about the practices of your favorite brands, helping you support companies that align with your values.
                """)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()

                // Credits Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("Developed By:")
                        .font(.headline)

                    Text("Samay Singh")
                        .font(.subheadline)

                    Text("Contact Us:")
                        .font(.headline)

                    Text("Email: support@ethicalcompanyapp.com")
                        .font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding()
        }
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
