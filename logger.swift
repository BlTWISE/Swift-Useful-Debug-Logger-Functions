import SwiftUI

// MARK: - Debug Log

/// Prints a detailed debug log statement that contains the file name, function name, line number, and passed message.
/// - Parameters:
///   - message: A descriptor message to output.
///   - fileName: Name of the file the log function is being called in.
///   - functionName: Name of the function the log function is being called in.
///   - lineNumber: Line number where log is called.
public func log(_ message: String = "Default", _ fileName: String = #file, _ functionName: String = #function, _ lineNumber: Int = #line) {
    
    let file = fileName.components(separatedBy: "/").last ?? "ERROR"
    
    let stringSuffix = "    |"
    let string = "[\(file)][\(functionName)()][LINE \(lineNumber)] \(message)" + stringSuffix
    
    var dashes = ""
    
    for _ in 0...string.count - 1 {
        dashes += "-"
    }
        
    print("")
    print(dashes)
    print(string)
    print(dashes)
    print("")
        
}

//―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// MARK: - Boxes
/// Detailed debug log that contains the file name, function name, line number, and message. Printed in a neat dynamic box format.
/// - Parameters:
///   - message: A descriptor message.
///   - fileName: Name of the file the log function is being called in.
///   - functionName: Name of the function the log function is being called in.
///   - lineNumber: Line number where log is called.
public func boxlog(_ message: String = "Default", _ fileName: String = #file, _ functionName: String = #function, _ lineNumber: Int = #line) {
    
    let file = fileName.components(separatedBy: "/").last ?? "ERROR"
    let string = "[\(file)][\(functionName)()][LINE \(lineNumber)]: \(message)"
    let spaces = "       "
    var finalString = spaces + string + spaces
    var dashes = ""
    var emptyLine = ""
    
    for _ in 0...(finalString.count + 5) {
        dashes += "-"
    }
    
    for _ in 0...(finalString.count + 4) {
        emptyLine += " "
    }
    emptyLine += "|"
    
    for _ in 0...4 {
        finalString += " "
    }
    finalString += "|"
        
    print(dashes)
    print(emptyLine)
    print(emptyLine)
    print(finalString)
    print(emptyLine)
    print(emptyLine)
    print(dashes)
        
}

/// Detailed debug log that contains a message printed in a box format.
/// - Parameters:
///   - message: A descriptor message.
public func boxlog(_ message: String = "Default") {
    
    let string = message
    let spaces = "       "
    var finalString = spaces + string + spaces
    var dashes = ""
    var emptyLine = ""
    
    for _ in 0...(finalString.count + 5) {
        dashes += "-"
    }
    
    for _ in 0...(finalString.count + 4) {
        emptyLine += " "
    }
    emptyLine += "|"
    
    for _ in 0...4 {
        finalString += " "
    }
    finalString += "|"
        
    print(dashes)
    print(emptyLine)
    print(emptyLine)
    print(finalString)
    print(emptyLine)
    print(emptyLine)
    print(dashes)
        
}
