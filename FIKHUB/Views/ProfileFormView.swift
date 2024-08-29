//
//  ProfileFormView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct ProfileFormView: View {
    @State private var name: String = ""

    var body: some View {
        ZStack {
            Form {
                Section {
                    HStack {
                        Text("Nama")
                            .frame(maxWidth: 100, alignment: .leading)
                        TextFieldClear(placeholder: "Nama Anda", text: $name, keyboardType: .emailAddress, onClear: {
                            name = ""
                        })
                    }
                }
                Section {
                    Button(action: {
                        print("tap prodi")
                    }, label: {
                        HStack {
                            Text("Prodi")
                                .foregroundStyle(.orange)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                    })
                    Button(action: {
                        print("tap semester")
                    }, label: {
                        HStack {
                            Text("Semester")
                                .foregroundStyle(.orange)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                    })
                }
            }
            ButtonFill(title: "Lanjutkan", action: {
                
            })
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProfileFormView()
}
