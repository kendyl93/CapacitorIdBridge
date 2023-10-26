import Foundation

@objc public class CapacitorIdBridge: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
