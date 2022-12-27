
import Foundation
struct GenresModel : Codable {
    
	let genres : [Genres]?

	enum CodingKeys: String, CodingKey {

		case genres = "genres"
	}
}

struct Genres : Codable {
    
    let id : Int?
    let name : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }
}

