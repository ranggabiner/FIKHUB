//
//  ScheduleList.swift
//  FIKHUB
//
//  Created by Rangga Biner on 30/08/24.
//

import SwiftUI

struct ScheduleList: View {
    @State private var items = [
        ListItem(title: "Pemrograman Web", room: "FIK-201", startTime: "08:00", endTime: "09:00")
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.room)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(item.startTime)
                            .font(.subheadline)
                        Text(item.endTime)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    Button(role: .destructive) {
                        print("tap delete")
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                    
                    Button {
                        print("tap edit")
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    .tint(.blue)
                }
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct ListItem: Identifiable {
    let id = UUID()
    var title: String
    var room: String
    var startTime: String
    var endTime: String
}

#Preview {
    ScheduleList()
}
