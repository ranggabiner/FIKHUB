//
//  ProdiView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct ProdiView: View {
    let semesters: [Int:String] = [
        1: "D3 Sistem Informasi",
        2: "S1 Sistem Informasi",
        3: "S1 Informatika",
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
    ProdiView()
}
