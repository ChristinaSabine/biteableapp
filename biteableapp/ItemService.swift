import UIKit
class ItemService {
    
    var settings:Settings!
    
    init() {
        self.settings = Settings()
    }
    func getItems(callback:(NSDictionary) -> ()) {
        request(url: settings.viewItems, callback: callback)
    }
    func request(url:String, callback:(NSDictionary) -> ()) {
    }
}
