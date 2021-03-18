// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateUserPoolClientOutputBody: Equatable {
    public let userPoolClient: UserPoolClientType?
}

extension UpdateUserPoolClientOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case userPoolClient = "UserPoolClient"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolClientDecoded = try containerValues.decodeIfPresent(UserPoolClientType.self, forKey: .userPoolClient)
        userPoolClient = userPoolClientDecoded
    }
}
