// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct LoginModel: Decodable {
    let message: String
    let code: Int
    let data: DataClass
    let errors: String?
    
    enum CodingKeys: String, CodingKey{
        case message
        case code
        case data
        case errors
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try container.decode(String.self, forKey: .message)
        self.code = try container.decode(Int.self, forKey: .message)
        self.data = try container.decode(DataClass.self, forKey: .data)
        self.errors = try container.decodeIfPresent(String.self, forKey: .errors)
    }
}

// MARK: - DataClass
struct DataClass: Decodable {
    let id: Int
    let name, email: String
    let emailVerifiedAt: String?
    let roleID: Int
    let currentTeamID: Int?
    var profilePhotoPath, frequency, createdAt, updatedAt: String
    let deletedAt: String?
    let token: String
    let profilePhotoURL: String
    let client: Client

    enum CodingKeys: String, CodingKey {
        case id, name, email
        case emailVerifiedAt = "email_verified_at"
        case roleID = "role_id"
        case currentTeamID = "current_team_id"
        case profilePhotoPath = "profile_photo_path"
        case frequency
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
        case token
        case profilePhotoURL = "profile_photo_url"
        case client
    }
    init (from decoder: Decoder) throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.email = try container.decode(String.self, forKey: .email)
        self.emailVerifiedAt = try container.decode(String.self, forKey: .emailVerifiedAt)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.roleID = try container.decode(Int.self, forKey: .roleID)
        self.currentTeamID = try container.decode(Int.self, forKey: .currentTeamID)
        self.profilePhotoPath = try container.decode(String.self, forKey: .profilePhotoPath)
        self.frequency = try container.decode(String.self, forKey: .frequency)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.deletedAt = try container.decode(String.self, forKey: .deletedAt)
        self.token = try container.decode(String.self, forKey: .token)
        self.profilePhotoURL = try container.decode(String.self, forKey: .profilePhotoURL)
        self.client = try container.decode(Client.self, forKey: .client)
    }
    
}

// MARK: - Client
struct Client: Decodable {
    let id: Int
    let facebook, instagram: String?
    let phoneNumber, cellPhoneNumber, calle, numero: String
    let codigoPostal, colonia, ciudad, pais: String
    let birthdate, birthplace, civilStatus, occupation: String
    let height, bodyWeight, bloodType, startDate: String
    let findOutGym: String?
    let communicateWith, extraPhoneNumber: String
    let invoice, unlimitedAccess: Int
    let deviceIDS: String
    let userID, clientTypeID, isActive: Int
    let statusSolicitud: Bool?
    let createdAt, updatedAt: String
    let deletedAt: String?

    enum CodingKeys: String, CodingKey {
        case id, facebook, instagram
        case phoneNumber = "phone_number"
        case cellPhoneNumber = "cell_phone_number"
        case calle, numero
        case codigoPostal = "codigo_postal"
        case colonia, ciudad, pais, birthdate, birthplace
        case civilStatus = "civil_status"
        case occupation, height
        case bodyWeight = "body_weight"
        case bloodType = "blood_type"
        case startDate = "start_date"
        case findOutGym = "find_out_gym"
        case communicateWith = "communicate_with"
        case extraPhoneNumber = "extra_phone_number"
        case invoice
        case unlimitedAccess = "unlimited_access"
        case deviceIDS = "device_ids"
        case userID = "user_id"
        case clientTypeID = "client_type_id"
        case isActive = "is_active"
        case statusSolicitud = "status_solicitud"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
    }
    init (from decoder: Decoder) throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.facebook = try container.decode(String.self, forKey: .facebook)
        self.instagram = try container.decode(String.self, forKey: .instagram)
        self.phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        self.cellPhoneNumber = try container.decode(String.self, forKey: .cellPhoneNumber)
        self.calle = try container.decode(String.self, forKey: .calle)
        self.numero = try container.decode(String.self, forKey: .numero)
        self.codigoPostal = try container.decode(String.self, forKey: .codigoPostal)
        self.colonia = try container.decode(String.self, forKey: .colonia)
        self.ciudad = try container.decode(String.self, forKey: .ciudad)
        self.pais = try container.decode(String.self, forKey: .pais)
        self.birthdate = try container.decode(String.self, forKey: .birthdate)
        self.birthplace = try container.decode(String.self, forKey: .birthplace)
        self.civilStatus = try container.decode(String.self, forKey: .civilStatus)
        self.occupation = try container.decode(String.self, forKey: .occupation)
        self.height = try container.decode(String.self, forKey: .height)
        self.bodyWeight = try container.decode(String.self, forKey: .bodyWeight)
        self.bloodType = try container.decode(String.self, forKey: .bloodType)
        self.startDate = try container.decode(String.self, forKey: .startDate)
        self.findOutGym = try container.decode(String.self, forKey: .findOutGym)
        self.communicateWith = try container.decode(String.self, forKey: .communicateWith)
        self.extraPhoneNumber = try container.decode(String.self, forKey: .extraPhoneNumber)
        self.invoice = try container.decode(Int.self, forKey: .invoice)
        self.unlimitedAccess = try container.decode(Int.self, forKey: .unlimitedAccess)
        self.deviceIDS = try container.decode(String.self, forKey: .deviceIDS)
        self.userID = try container.decode(Int.self, forKey: .userID)
        self.clientTypeID = try container.decode(Int.self, forKey: .clientTypeID)
        self.isActive = try container.decode(Int.self, forKey: .isActive)
        self.statusSolicitud = try container.decode(Bool.self, forKey: .statusSolicitud)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.deletedAt = try container.decode(String.self, forKey: .deletedAt)
    }
}
