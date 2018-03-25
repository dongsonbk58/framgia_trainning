//
//  DBHelped.swift
//  Lession7
//
//  Created by Nguyen Dong Son on 3/24/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import Foundation
import FMDB

public class DBHelped
{
    static let shared: DBHelped = DBHelped()
    let databaseFileName = "demo.sqlite"
    var pathToDatabase: String!
    var database: FMDatabase!
    var queue: FMDatabaseQueue?
    
    let KEY_ID:String = "id"
    let KEY_ID_USER:String = "uuid"
    let KEY_TITLE:String = "title"
    let KEY_DEADLINE:String = "deadline"
    let TABLE:String = "demotable"
    var list:[TodoItem]=[]
    
    
    init() {
        let documentsDirectory = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString) as String
        pathToDatabase = documentsDirectory.appending("/\(databaseFileName)")
        queue = FMDatabaseQueue(path: pathToDatabase)
        
    }
    
    
    
    func openDatabase() -> Bool {
        if database == nil {
            if FileManager.default.fileExists(atPath: pathToDatabase) {
                database = FMDatabase(path: pathToDatabase)
            }
        }
        
        if database != nil {
            if database.open() {
                return true
            }
        }
        
        return false
    }
    
    
    
    func insertData(record: TodoItem) {
        if openDatabase() {
            self.queue?.inDatabase { (db) in
                let InsertQry = "insert into \(self.TABLE) (\(self.KEY_ID), \(self.KEY_ID_USER),\(self.KEY_TITLE),\(self.KEY_DEADLINE)) values ( null ,'\(record.UUID)','\(record.title)','\(record.deadline)')"
                
                if !self.database.executeStatements(InsertQry) {
                    print("Failed to insert initial data into the database.")
                    print(self.database.lastError(), self.database.lastErrorMessage())
                }else{
                    print("success")
                }
                
            }
        }
    }
    
    
    
    func getlistdata()->[TodoItem]{
        list.removeAll()
        if openDatabase() {
            self.queue?.inDatabase { (db) in
                let getlist = "SELECT * FROM \(self.TABLE)"
                let results:FMResultSet? = self.database.executeQuery(getlist, withArgumentsIn: nil)
                while results?.next() == true {
                    if let r2 = results?.string(forColumn: self.KEY_ID_USER),
                        let r3 = results?.string(forColumn: self.KEY_TITLE){
                        let dateString = "2014-01-12"
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "yyyy-MM-dd"
                        let s = dateFormatter.date(from:dateString)
                        let a = TodoItem(deadline: s!, title: r3, UUID: r2)
                        print(r2)
                        self.list.append(a)
                    }
                }
            }
            
        }
        return list
        
    }
    
    
    
    func Delete(record: TodoItem) -> Bool
    {
        var like:Bool=false
        if openDatabase() {
            self.queue?.inDatabase { (db) in
                let sql = String(format: "DELETE FROM %@ WHERE %@=%@", self.TABLE, self.KEY_ID_USER,record.UUID)
                
                if !self.database.executeStatements(sql)
                {
                    print("false")
                    like = false
                }
                else
                {
                    print("delete success")
                    like = true
                }
            }
        }
        
        return like
    }
    
}

