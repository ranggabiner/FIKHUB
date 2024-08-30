//
//  EditScheduleView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 30/08/24.
//

import SwiftUI

struct EditScheduleView: View {
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
                Section {
                    Button(action: {
                        print("tap hapus")
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Hapus Jadwal")
                                .foregroundStyle(.red)
                            Spacer()
                        }
                    })
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
                    Button("Selesai") {
                        print("tambah tapped")
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text("Edit")
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    EditScheduleView()
}
