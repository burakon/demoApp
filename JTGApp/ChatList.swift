

import UIKit
import Toucan

struct ChatList {
    let person: Guide
    let talks:[Talk]
    let lastTalk:String
    
}

extension ChatList {
    static let talks = [MarkTalk,EvanTalk]
    
    static let MarkTalk = ChatList (
        person: Guide.Mark,
        talks: [
            Talk(
                name : "Mark",
                text : "Hello!I'm Marrrk"),
            Talk(
                name : "Me",
                text : "Thenks Your MSG!"),
            Talk(
                name : "Mark",
                text : "Fooooo!"),
            Talk(
                name : "Me",
                text : "OK! Thanks")]
        
        ,
        
        lastTalk: "OK! Thanks"
    )
    static let EvanTalk = ChatList (
        person: Guide.Evan,
        talks: [
            Talk(
                name : "Evan",
                text : "Hello!I'm Bill.日本語でおk！"),
            Talk(
                name : "Me",
                text : "きゃーーーーーーーーーーーーーーーーーーーーーーーーーーーーー\n\n\n\nありがとうビル!"),
            Talk(
                name : "Bill",
                text : "heyhey Fooooooooooooooooooooo\npop\nhunhun\nfufufu\n\n\nyo"),
            Talk(
                name : "Me",
                text : "Bye")]
        
        ,
        
        lastTalk: "Bye"
    )
    
    
}

struct Talk {
    
    let name :String
    let text :String
    
}
