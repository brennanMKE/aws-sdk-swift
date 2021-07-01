// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UserMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case emailAddress = "EmailAddress"
        case givenName = "GivenName"
        case id = "Id"
        case surname = "Surname"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let emailAddress = emailAddress {
            try encodeContainer.encode(emailAddress, forKey: .emailAddress)
        }
        if let givenName = givenName {
            try encodeContainer.encode(givenName, forKey: .givenName)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let surname = surname {
            try encodeContainer.encode(surname, forKey: .surname)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let givenNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .givenName)
        givenName = givenNameDecoded
        let surnameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .surname)
        surname = surnameDecoded
        let emailAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emailAddress)
        emailAddress = emailAddressDecoded
    }
}