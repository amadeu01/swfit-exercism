// swift-tools-version:4.0

import PackageDescription
import Foundation

fileprivate func directoryExistsAtPath(_ path: String) -> Bool {
    var isDirectory = ObjCBool(true)
    let exists = FileManager.default.fileExists(atPath: path, isDirectory: &isDirectory)
    return exists && isDirectory.boolValue
}

let currentDirectory = FileManager.default.currentDirectoryPath
let allFiles = try! FileManager.default.contentsOfDirectory(atPath: "./")
var allProblems = [String]()

allProblems = allFiles.filter() { directoryExistsAtPath("./" + $0) && !$0.hasPrefix(".") }

let packageDependencies = allProblems.map { Package.Dependency.package(url: "./\($0)/", .branch("master")) }

let package = Package(
    name: "xswift",
    dependencies: [
    	.package(url: "./bob", .branch("master"))
    ]
)
