//
//  SemesterView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct SemesterView: View {
    let semesters: [Int:String] = [
        1: "Semester 1",
        2: "Semester 2",
        3: "Semester 3",
        4: "Semester 4",
        5: "Semester 5",
        6: "Semester 6",
        7: "Semester 7",
        8: "Semester 8",
    ]

    var body: some View {
        Form {
            ForEach(Array(semesters.sorted(by: { $0.key < $1.key })), id: \.key) { key, value in
                Button(action: {
                    print("tap \(value)")
                }) {
                    Text(value)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    SemesterView()
}
