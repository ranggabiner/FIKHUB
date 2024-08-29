//
//  WelcomeView.swift
//  FIKHUB
//
//  Created by Rangga Biner on 29/08/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 156)
                        .foregroundStyle(.orange)
                    Image(systemName: "text.bubble.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 70))
                }
                .padding(.bottom, 28)
                Text("Selamat datang di FIK HUB")
                    .font(.system(size: 27))
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 8)

                Text("Solusi cerdas, efisien, dan andal bagi mahasiswa untuk meraih prestasi akademik")
                    .font(.system(size: 19))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            ButtonFill(title: "Continue", action: { print("Continue tapped") })
        }
        .padding(.horizontal)
    }
}

#Preview {
    WelcomeView()
}
