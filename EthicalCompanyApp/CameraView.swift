//
//  CameraView.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import SwiftUI

struct CameraView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 30) {
            Text("Camera is open")
                .font(.title)
                .padding()

            Text("Pretend we are scanning a barcode...")
                .font(.subheadline)

            Button("Done") {
                dismiss()
            }
            .font(.headline)
            .padding()
            .background(Color.blue.cornerRadius(8))
            .foregroundColor(.white)

            Spacer()
        }
        .padding()
    }
}