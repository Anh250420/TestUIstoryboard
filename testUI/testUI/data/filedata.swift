
import Foundation

public struct Item {
    var name: String
    var detail: String
    var imagename: String
    
    public init(name: String, detail: String, imagename: String) {
        self.name = name
        self.detail = detail
        self.imagename = imagename
    }
}

public struct Section {
    var name: String
    var items: [Item]
    var collapsed: Bool
    
    public init(name: String, items: [Item], collapsed: Bool = false) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
    }
}

public var sectionsData: [Section] = [
    Section(name: "Biography", items: [Item(name: "Royal Parvej", detail: "The most comfortable Nile's i've wom in the past coupe of years has been the 32s. These have surpassed that. They look amazing and have comfort. You can see where this review is going. \n \n 10.02.2020", imagename: "dangyeu.png")]),
    Section(name: "Photo", items: []),
    Section(name: "Filmography", items: [
        Item(name: "Royal Parvej", detail: "The most comfortable Nile's i've wom in the past coupe of years has been the 32s. These have surpassed that. They look amazing and have comfort. You can see where this review is going. \n \n 10.02.2020", imagename: "dangyeu.png"),
        Item(name: "Prosing Rox", detail: "I love a good looking shoe, but comfort is where it's at for me. I can't say how well they are for playing ball in, but for everyday wear they are amazing. I think they're more comfortable than my lebron 17s. \n \n 09.02.2020",imagename: "anhthe.png"),
        Item(name: "More Reviews", detail: "",imagename: "")
    ])
]
public struct dataPhim {
    var namePhim: String
    var imagePhim: String
    
    public init(namePhim: String, imagePhim: String) {
        self.namePhim = namePhim
        self.imagePhim = imagePhim
    }
}
public var ListDataPhim: [dataPhim] = [
    dataPhim(namePhim: "#2 Wish you were here", imagePhim: "image 47"),
    dataPhim(namePhim: "#3 Bingo Hell", imagePhim: "image 48")
]
