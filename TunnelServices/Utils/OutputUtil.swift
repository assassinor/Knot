//
//  OutputUtil.swift
//  NIO1901
//
//  Created by LiuJie on 2019/6/2.
//  Copyright © 2019 Lojii. All rights reserved.
//

let cachesFolder = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).last
let outputFolder = cachesFolder!.appendingPathComponent("output")

public class OutputUtil {
    
    static func upload() {
        DispatchQueue.global().async {
            guard createFolder(outputFolder) else {
                return
            }
            guard let id = Task.getAllIds().first else {
                return
            }
            let sessions = Task.findAll(taskIds:[id])
            let har = HAR()
            for s in sessions { har.append(session: s) }
            guard let jsonData = try? JSONEncoder().encode(har) else {
                return;
            }
            let fileUrl = outputFolder.appendingPathComponent("history.har")
            try? jsonData.write(to: fileUrl)
            // var request = URLRequest(url: URL(string: "http://10.71.201.171/har/upload.php")!)
            var request = URLRequest(url: URL(string: "http://192.168.10.36/har/upload.php")!)
            request.httpMethod = "POST"
            request.allHTTPHeaderFields = ["Content-Type": "application/octet-stream"]
            URLSession.shared.uploadTask(with: request, fromFile: fileUrl).resume()
        }
    }
    
    static func createFolder(_ folder:URL) -> Bool{
        let fileManager = FileManager.default
        var isDir : ObjCBool = false
        let path = folder.absoluteString.components(separatedBy: "file://").last
        let isExits = fileManager.fileExists(atPath: path ?? folder.absoluteString, isDirectory: &isDir)
        if !isExits || !isDir.boolValue {
            do{
                try fileManager.createDirectory(at: folder, withIntermediateDirectories: true, attributes: nil)
            }catch{
                return false
            }
        }
        return true
    }
}
