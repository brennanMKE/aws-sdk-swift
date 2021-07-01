// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetContactOutputResponseBody: Equatable {
    public let contactArn: String?
    public let alias: String?
    public let displayName: String?
    public let type: ContactType?
    public let plan: Plan?
}

extension GetContactOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case alias = "Alias"
        case contactArn = "ContactArn"
        case displayName = "DisplayName"
        case plan = "Plan"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contactArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contactArn)
        contactArn = contactArnDecoded
        let aliasDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alias)
        alias = aliasDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let typeDecoded = try containerValues.decodeIfPresent(ContactType.self, forKey: .type)
        type = typeDecoded
        let planDecoded = try containerValues.decodeIfPresent(Plan.self, forKey: .plan)
        plan = planDecoded
    }
}