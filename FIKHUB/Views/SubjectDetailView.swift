//
//  SubjectDetailView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 30/08/24.
//

import SwiftUI

struct SubjectDetailView: View {
    var body: some View {
        NavigationView {
            List {
                Button(action: {
                    
                }, label: {
                    HStack {
                        Text("Pertemuan 1: Konsep dasar")
                        Spacer()
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.green)
                    }
                })
                Button(action: {
                    
                }, label: {
                    HStack {
                        Text("Pertemuan 2: Client Side")
                        Spacer()
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.green)
                    }
                })
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Pemrograman Web")
        }
    }
}

#Preview {
    SubjectDetailView()
}
