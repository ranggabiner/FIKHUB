//
//  SubjectPickerView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 30/08/24.
//

import SwiftUI

struct SubjectPickerView: View {
    let subjects: [Int:String] = [
        1: "Analisis Bisnis",
        2: "Interaksi Manusia Dan Komputer",
        3: "Manajemen Proyek Sistem Informasi",
        4: "Pemrograman Web",
        5: "Pengantar Data Science",
        6: "Pengantar Teknologi Informasi",
        7: "Praktikum Interaksi Manusia Dan Komputer",
        8: "Praktikum Pemrograman Web",
        9: "Praktikum Sistem Operasi",
        10: "Sistem Informasi Manajemen",
        11: "Sistem Operasi",
        12: "Statistik dan Probabilitas",
        13: "Technopreneurship",
    ]
    @State private var searchText = ""

    var filteredSubjects: [(key: Int, value: String)] {
        if searchText.isEmpty {
            return Array(subjects.sorted(by: { $0.key < $1.key }))
        } else {
            return subjects.filter { $0.value.lowercased().contains(searchText.lowercased()) }
                .sorted(by: { $0.key < $1.key })
        }
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(filteredSubjects, id: \.key) { key, value in
                    Button(action: {
                        print("tap \(value)")
                    }) {
                        Text(value)
                            .foregroundColor(.black)
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Cari")
        }
    }
}

#Preview {
    SubjectPickerView()
}
