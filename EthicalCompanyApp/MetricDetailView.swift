import SwiftUI

struct MetricDetailView: View {
    let metricName: String
    let reason: Reason?

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(metricName)
                .font(.title)
                .fontWeight(.bold)

            if let reason = reason {
                Text(reason.explanation)
                    .font(.body)
                    .multilineTextAlignment(.leading)

                if !reason.sources.isEmpty {
                    Text("Sources:")
                        .font(.headline)
                    ForEach(reason.sources, id: \.url) { src in
                        Link(src.name, destination: URL(string: src.url)!)
                            .foregroundColor(.blue)
                    }
                }
            } else {
                Text("No detailed information available for this metric.")
                    .font(.body)
            }

            Spacer()
        }
        .padding()
        .navigationTitle(metricName)
        .navigationBarTitleDisplayMode(.inline)
    }
}
