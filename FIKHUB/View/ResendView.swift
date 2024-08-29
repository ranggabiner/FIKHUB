//
//  ResendView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct ResendView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 81)
                        .foregroundStyle(.orange)
                    Image(systemName: "text.bubble.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 36))
                }
                VStack (spacing: 31) {
                    Text("Tidak menerima link verifikasi?")
                        .font(.system(size: 27))
                        .fontWeight(.semibold)
                        .foregroundStyle(.primary)
                        .multilineTextAlignment(.center)
                    Text("Silakan periksa pesan email Anda sebelum meminta link verifikasi lain.")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)

                }
            }
            Spacer()
            ButtonFill(title: "Kirim ulang", action: { print("Continue tapped") })
        }
        .padding(.horizontal)
    }}

#Preview {
    ResendView()
}
