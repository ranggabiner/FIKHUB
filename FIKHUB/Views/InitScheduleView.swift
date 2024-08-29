//
//  InitScheduleView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct InitScheduleView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                    Text("Untuk menambahkan jadwal kelas Anda, silakan klik tombol tambah (+) yang terletak di sudut kanan bawah.")
                        .font(.callout)
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            print("tap plus")
                        } label: {
                            Image(systemName: "plus")
                                .font(.title.weight(.semibold))
                                .padding()
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 4, x: 0, y: 4)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Jadwal")
                            .font(.headline)
                        Spacer()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Selesai") {
                        print("tap selesai")
                    }
                }
            }
        }
    }
}

#Preview {
    InitScheduleView()
}
