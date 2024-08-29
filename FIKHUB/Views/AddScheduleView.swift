//
//  AddScheduleView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct AddScheduleView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var date = Date()
    @State private var selectedDay = 0
    
    let daysOfWeek = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Button(action: {
                        print("tap mata kuliah")
                    }, label: {
                        HStack {
                            Text("Mata Kuliah")
                                .foregroundStyle(.orange)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                    })
                    Button(action: {
                        print("tap lokasi")
                    }, label: {
                        HStack {
                            Text("Lokasi")
                                .foregroundStyle(.orange)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                    })
                }
                Section {
                    Picker("Hari", selection: $selectedDay) {
                        ForEach(0..<daysOfWeek.count, id: \.self) { index in
                            Text(daysOfWeek[index]).tag(index)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    DatePicker(
                        "Mulai",
                        selection: $date,
                        displayedComponents: [.hourAndMinute]
                    )
                    DatePicker(
                        "Selesai",
                        selection: $date,
                        displayedComponents: [.hourAndMinute]
                    )
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Batal") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Tambah") {
                        print("tambah tapped")
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text("Baru")
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    AddScheduleView()
}
