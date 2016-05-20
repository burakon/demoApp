

import UIKit
import Toucan

struct Guide {
    let name: String
    let personImage: UIImage
    let countryImage: UIImage
    let area: String
    let language: String
    let tourDays: TourDays
    let profile: String
    let createdAt: String

}

extension Guide {
    
    static let guide = [Mark, Evan, Steve,Bill ].sort { $0.tourDays.firstDay < $1.tourDays.firstDay }
    
    static let Mark = Guide(
        name: "Mark",
        personImage: Toucan(image: UIImage(named: "Mark")!).maskWithEllipse().image,
        countryImage: UIImage(named: "US")!,
        area : "TourArea Tokyo,Roppongi",
        language:"Eng" ,
        tourDays: TourDays(
            firstDay: "2016/12/12",
            lastDay: "2016/12/18"
        ) ,
        profile:" Hi! I'm Mark. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!Hi! I'm Mark. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!Hi! I'm Mark. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!Hi! I'm Mark. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!Hi! I'm Mark. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!Hi! I'm Mark. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!" ,
        createdAt:"2016/05/20"

    )
    
    static let Evan = Guide(
        name: "Evan",
        personImage: Toucan(image: UIImage(named: "Evan")!).maskWithEllipse().image,
        countryImage: UIImage(named: "US")!,
        area : "TourArea Tokyo,Roppongi",
        language:"Eng" ,
        tourDays: TourDays(
            firstDay: "2016/12/25",
            lastDay: "2017/01/03"
        ),
        profile:" Hi! I'm Evan. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!" ,
        createdAt:"2016/05/20"
    )
    static let Steve = Guide(
        name: "Steve",
        personImage: Toucan(image: UIImage(named: "Steve")!).maskWithEllipse().image,
        countryImage: UIImage(named: "US")!,
        area : "TourArea Tokyo,Roppongi",
        language:"Eng" ,
        tourDays: TourDays(
            firstDay: "2016/05/25",
            lastDay: "2016/06/01"
        ),
                profile:" Hi! I'm Steve. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!" ,
        
        createdAt:"2016/05/20"
    )
    static let Bill = Guide(
        name: "Bill",
        personImage: Toucan(image: UIImage(named: "Bill")!).maskWithEllipse().image,
        countryImage: UIImage(named: "US")!,
        area : "TourArea Tokyo,Roppongi",
        language:"Eng" ,
        tourDays: TourDays(
            firstDay: "2016/08/05",
            lastDay: "2016/08/09"
        ),
                profile:" Hi! I'm Bill. I'd like to trip in Tokyo. Because I never been to Tokyo. Tokyo is the most popular spot in Japan. I`d like to go shopping, eating many foods and go up to Tokyo tower!" ,
        createdAt:"2016/05/20"
    )
}


struct TourDays{
    let firstDay: String
    let lastDay: String
}
