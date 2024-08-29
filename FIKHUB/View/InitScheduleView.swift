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
            Text("Hello, World!").padding()
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("First") {
                            print("Pressed")
                        }

                        Spacer()

                        Button("Second") {
                            print("Pressed")
                        }
                    }
                }
        }

    }
}

#Preview {
    InitScheduleView()
}
