# Swift-Useful-Debug-Logger-Functions
In `logger.swift`, there are a list of log functions that are neatly organized in various formats to help you debug more effectively. Some functions leverage the use of some special literals that print details about the caller context such as the file name, the function, and line number. Columns are ignored since they aren't necessary but they can always be added. Note that when the file is passed to any function the inputted file is parsed and stripped of all directories so it only prints the file name.

# Usage Examples

## boxlog call with no caller attributes
```swift
boxlog("Clear date 1 pressed")
```
![image](https://user-images.githubusercontent.com/52811202/124782327-251d1380-df12-11eb-8454-65b59dc2bb9e.png)

