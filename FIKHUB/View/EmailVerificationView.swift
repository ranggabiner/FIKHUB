//
//  EmailVerificationView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct EmailVerificationView: View {
    @State private var email: String = ""

    var body: some View {
        VStack {
            VStack {
                VStack (spacing: 33) {
                    (Text("Klik link verifikasi yang telah kami kirim melalui email ke ") +
                    Text("2310501014@mahasiswa.upnvj.ac.id")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    )
                    .foregroundStyle(.primary)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    VStack (spacing: 16) {
                        Button(action: {
                            print("tap")
                        }, label: {
                            Text("Tidak Menerima Tautan Verifikasi?")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                        })
                        .disabled(true)
                        (Text("Anda dapat meminta kode baru dalam ") +
                        Text("1:02")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        )
                            .font(.system(size: 15))
                            .fontWeight(.regular)
                            .foregroundStyle(.primary)
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    EmailVerificationView()
}
