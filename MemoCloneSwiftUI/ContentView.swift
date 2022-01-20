//
//  ContentView.swift
//  MemoCloneSwiftUI
//
//  Created by 송상윤 on 2022/01/19.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
            NavigationView {
                List {
                        NavigationLink(destination: QuickMemoView()) {
                            Image(systemName: "note.text")
                                .foregroundColor(Color(.systemBlue))
                            Text("빠른 메모")
                        }
                        
                    
                    
                    
                    Section(header: Text("iCloud")) {
                        NavigationLink(destination: MemoView()) {
                            Image(systemName: "folder")
                                .foregroundColor(Color(.systemBlue))
                            Text("메모")
                        }
                        NavigationLink(destination: RecentDeleteView()) {
                            Image(systemName: "trash")
                                .foregroundColor(Color(.systemBlue))
                            Text("최근 삭제된 항목")
                        }
                    }
                }
                    .searchable(text: $searchText)
                    .navigationTitle("폴더")
                    .navigationBarItems(trailing: EditButton())
                    .toolbar {
                        ToolbarItemGroup(placement: .bottomBar) {
                            Button(action: {}) {
                                Image(systemName: "folder.badge.plus")
                                    .foregroundColor(Color(.systemBlue))
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "square.and.pencil")
                                    .foregroundColor(Color(.systemBlue))
                            }
                        }
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
