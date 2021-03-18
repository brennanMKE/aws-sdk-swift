// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetAccountSettingsOutputBody: Equatable {
    public let accountLimit: AccountLimit?
    public let accountUsage: AccountUsage?
}

extension GetAccountSettingsOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case accountLimit = "AccountLimit"
        case accountUsage = "AccountUsage"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accountLimitDecoded = try containerValues.decodeIfPresent(AccountLimit.self, forKey: .accountLimit)
        accountLimit = accountLimitDecoded
        let accountUsageDecoded = try containerValues.decodeIfPresent(AccountUsage.self, forKey: .accountUsage)
        accountUsage = accountUsageDecoded
    }
}
