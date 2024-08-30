import SwiftUI

struct ScheduleView: View {
    @State private var selectedSegment = 0
    let segments = ["Singkat", "Semua"]

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Your main content goes here
                Text("Schedule content for \(segments[selectedSegment])")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                Spacer()
            }
            .navigationTitle("Jadwal")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Picker("Schedule", selection: $selectedSegment) {
                            ForEach(0..<segments.count, id: \.self) { index in
                                Text(segments[index])
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .frame(width: 220)
                    }
                }
            }
        }
    }
}

#Preview {
    ScheduleView()
}
