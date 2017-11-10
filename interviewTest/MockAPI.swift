//
//  MockAPI.swift
//  interviewTest
//
//  Created by Colin Walsh on 11/10/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import Foundation

struct MockAPI {
    static func getData() -> [Any] {
        let path = Bundle.main.path(forResource: "ordered_content",
                                    ofType: "json")
        
        var jsonData: NSData {
            do {
                return try NSData(contentsOfFile: path!, options: NSData.ReadingOptions.mappedIfSafe) }
            catch {
                print("Error!")
                return NSData()
            }
        }
        
        return
            try! JSONSerialization
                .jsonObject(with: jsonData as Data,
                            options: []) as! Array<Any>
    }
}
