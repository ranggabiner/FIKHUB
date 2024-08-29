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
            VStack (spacing: 34) {
                Text("Verifikasi untuk akun ChatFIK dibatasi hanya untuk pengguna dengan alamat email upnvj.ac.id.")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextFieldClear(placeholder: "Masukkan email upnvj.ac.id", text: $email, keyboardType: .emailAddress, onClear: {
                    email = ""
                })
            }
            Spacer()
            ButtonFill(title: "Lanjutkan", action: { print("Continue tapped") })
        }
        .padding(.horizontal)
    }
}

#Preview {
    EmailVerificationView()
}
