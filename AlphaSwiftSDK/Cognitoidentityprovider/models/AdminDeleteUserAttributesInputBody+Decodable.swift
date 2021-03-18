// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct AdminDeleteUserAttributesInputBody: Equatable {
    public let userPoolId: String?
    public let username: String?
    public let userAttributeNames: [String]?
}

extension AdminDeleteUserAttributesInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case userAttributeNames = "UserAttributeNames"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let userAttributeNamesContainer = try containerValues.decodeIfPresent([String].self, forKey: .userAttributeNames)
        var userAttributeNamesDecoded0:[String]? = nil
        if let userAttributeNamesContainer = userAttributeNamesContainer {
            userAttributeNamesDecoded0 = [String]()
            for string0 in userAttributeNamesContainer {
                userAttributeNamesDecoded0?.append(string0)
            }
        }
        userAttributeNames = userAttributeNamesDecoded0
    }
}
