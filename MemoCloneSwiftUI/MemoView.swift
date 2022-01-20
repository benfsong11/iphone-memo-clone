//
//  MemoView.swift
//  MemoCloneSwiftUI
//
//  Created by 송상윤 on 2022/01/20.
//

import SwiftUI

struct MemoView: View {
    @State private var searchText = ""
    
    var body: some View {
        Text("메모입니다.")
            .searchable(text: $searchText)
            .navigationTitle(Text("메모"))
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "ellipsis.circle")
            })
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

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView()
    }
}
