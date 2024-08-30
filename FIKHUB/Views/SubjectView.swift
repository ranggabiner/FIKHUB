//
//  SubjectView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 30/08/24.
//

import SwiftUI

struct SubjectView: View {
    var body: some View {
        NavigationView {
            List {
                Button(action: {
                    print("tap matkul")
                }, label: {
                    HStack {
                        Image(systemName: "book.pages")
                        Text("Pemrograman Web")
                    }
                    .font(.headline)
                    .foregroundStyle(.black)
                })
                
                Button(action: {
                    print("tap matkul")
                }, label: {
                    HStack {
                        Image(systemName: "book.pages")
                        Text("Sistem Operasi")
                    }
                    .font(.headline)
                    .foregroundStyle(.black)
                })
            }
            .navigationTitle("Mata Kuliah")
        }
    }
}

#Preview {
    SubjectView()
}
