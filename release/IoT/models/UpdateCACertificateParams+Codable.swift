// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateCACertificateParams: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case action
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let action = action {
            try encodeContainer.encode(action.rawValue, forKey: .action)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionDecoded = try containerValues.decodeIfPresent(CACertificateUpdateAction.self, forKey: .action)
        action = actionDecoded
    }
}