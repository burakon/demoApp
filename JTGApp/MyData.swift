

import UIKit
import Toucan



struct MyData {
    let name: String
    var image: UIImage
    let countryImage: UIImage
    let area: String
    let language: String
    let profile: String
    
    
   }

extension MyData {
    
    static let Me = MyData (
        
        name: "Gotou Reiko",
        image: UIImage(named:"GotouReiko")!,
        countryImage: UIImage(named: "JP")!,
        area : "TourArea Tokyo",
        language:"Ja,Eng" ,
        profile:"こんにちは。後藤ともうします。\n東京都に住んでいます。東京都内をガイドしたいです。\n楽しい時間を過ごしたいと思い参加しました。宜しくお願いします。\n\nHello,I'm Gotou Reiko.\nI live in Tokyo. I would like to guide in Tokyo. \n Thank u."
    )
}