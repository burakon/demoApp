

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
        name: "Kenji Naito",
        image: UIImage(named: "KenjiNaito")!,
        countryImage: UIImage(named: "JP")!,
        area : "TourArea Tokyo",
        language:"Ja,Eng" ,
        profile:"こんにちは。内藤ともうします。\n東京都に住んでいます。東京都内をガイドしたいです。寺や神社が好きです。\n楽しい時間を過ごしたいと思ってJTGに参加しました。宜しくお願いします。\n\nHello,I'm Kenji Naito.\nI live in Tokyo. I would like to guide in Tokyo. I like temple and Shrine.\nI would like to have fun ,So I joined JTG.\n Thankyou."
    )
}