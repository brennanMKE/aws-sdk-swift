// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UserPoolAddOnsType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case advancedSecurityMode = "AdvancedSecurityMode"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let advancedSecurityMode = advancedSecurityMode {
            try container.encode(advancedSecurityMode.rawValue, forKey: .advancedSecurityMode)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let advancedSecurityModeDecoded = try containerValues.decodeIfPresent(AdvancedSecurityModeType.self, forKey: .advancedSecurityMode)
        advancedSecurityMode = advancedSecurityModeDecoded
    }
}
