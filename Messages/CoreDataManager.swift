//
//  CoreDataManager.swift
//  Messages
//
//  Created by Vu Dang on 5/23/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import Foundation
import CoreData
import UIKit

/**
 *  This class handles everything that needs to be done with Core Data
 *  and saving messages
 *  Can add, and delete messages
 *  Also is used to retrieve messages
 */

class CoreDataService {
    
    static var instance = CoreDataService()
    
    func getContext () -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    func getArray() -> [NSManagedObject] {
        
        var messageArray = [NSManagedObject]()
            
        let moc = self.getContext()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "TextMessage")
            
        //Set Message Array as the core data object
        do {
            messageArray = try moc.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        return messageArray
    }
    
    func add(text: String, from: Bool) {

        let moc = self.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "TextMessage", in: moc)!
        let textMessage = NSManagedObject(entity: entity, insertInto: moc)
        
        //Set Values
        textMessage.setValue(text, forKeyPath: "text")
        textMessage.setValue(from, forKeyPath: "isFromUser")
        
        //Save
        self.save(context: moc)
    }
    
    func getTextMessage(at: Int) -> NSManagedObject? {
        let moc = getContext()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "TextMessage")
        let result = try? moc.fetch(fetchRequest)
        
        guard result?[at] != nil else {
            print("Failed to fetch Observation")
            return nil
        }
        
        return result![at]
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("saved in Core Data")
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}
