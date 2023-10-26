import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorIdBridgePlugin)
public class CapacitorIdBridgePlugin: CAPPlugin {
    private let implementation = CapacitorIdBridge()

    @objc func setNativeID(_ call: CAPPluginCall) {
        let id = call.getString("id") ?? ""
        
        // Saving the ID to UserDefaults
        UserDefaults.standard.setValue(id, forKey: "CustomElement_NativeID")
        
        call.success([
            "message": "ID received and saved: \(id)"
        ])
    }
}
