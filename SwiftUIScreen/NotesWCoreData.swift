//
//  NotesWCoreData.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 12/07/23.
//

import SwiftUI

struct NotesWCoreData: View {
    
    @EnvironmentObject var manager: Persistance
    @Environment(\.managedObjectContext) private var context
    @FetchRequest(sortDescriptors: []) private var notes: FetchedResults<Note>
    
    var body: some View {
        
        ScrollView {
            VStack {
                Button(action: addItem) {
                    Label("Add Note Item", systemImage: "folder.badge.plus")
                }
                
                Button(action: deleteAll) {
                    Label("Delete All", systemImage: "delete")
                }
                
                ForEach(notes) { note in
                    VStack(alignment: .center) {
                        Text(note.title ?? "SomeTitle")
                        Text(note.noteText ?? "SomeNoteText")
                        Divider()
                    }.frame(maxWidth: .infinity)
                        .onTapGesture {
                            deleteItem(note: note)
                        }
                }
                
            }
        }
    }
    
    func addItem() {
        let newNote = Note(context: context)
        newNote.title = "noteTitle"
        newNote.noteText = "noteText"
        do {
            print("one Note: ", newNote)
            print("fetched Notes: ", notes)
            try context.save()
        } catch {
            print(error)
        }
    }
    
    func deleteItem(note: Note) {
        context.delete(note)
        do {
            try context.save()
        } catch {
            print(error)
        }
        
    }
    
    func deleteAll() {
        for note in notes {
            context.delete(note)
        }
    }
}
