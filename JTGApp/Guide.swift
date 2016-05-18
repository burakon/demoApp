

import UIKit
import Toucan

struct Guide {
    let name: String
    let personImage: UIImage
    let countryImage: UIImage
    let area: String
    let language: String
    let tourDays: TourDays
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
        createdAt:"2016/05/20"
    )
}