
import Foundation

struct FakeModel : Codable {
    
	let email : String?
	let gender : String?
	let id : String?
	let user_name : String?
    let avatar : String?

	enum CodingKeys: String, CodingKey {

		case email = "email"
		case gender = "gender"
		case id = "id"
		case user_name = "user_name"
        case avatar = "avatar"
	}
}
