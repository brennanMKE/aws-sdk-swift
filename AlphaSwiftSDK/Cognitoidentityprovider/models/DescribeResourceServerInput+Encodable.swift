// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DescribeResourceServerInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case identifier = "Identifier"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let identifier = identifier {
            try container.encode(identifier, forKey: .identifier)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
    }
}
