//
//  RecentDeleteView.swift
//  MemoCloneSwiftUI
//
//  Created by 송상윤 on 2022/01/20.
//

import SwiftUI

struct RecentDeleteView: View {
    @State private var searchText = ""
    
    var body: some View {
        Text("최근 삭제된 항목입니다.")
            .searchable(text: $searchText)
            .navigationTitle(Text("최근 삭제된 항목"))
            .navigationBarItems(trailing: EditButton())
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(Color(.systemBlue))
                    }
                }
            }
    }
}

struct RecentDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        RecentDeleteView()
    }
}
