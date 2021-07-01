// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateNotificationSubscriptionInputBody: Equatable {
    public let endpoint: String?
    public let `protocol`: SubscriptionProtocolType?
    public let subscriptionType: SubscriptionType?
}

extension CreateNotificationSubscriptionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpoint = "Endpoint"
        case `protocol` = "Protocol"
        case subscriptionType = "SubscriptionType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpoint)
        endpoint = endpointDecoded
        let protocolDecoded = try containerValues.decodeIfPresent(SubscriptionProtocolType.self, forKey: .protocol)
        `protocol` = protocolDecoded
        let subscriptionTypeDecoded = try containerValues.decodeIfPresent(SubscriptionType.self, forKey: .subscriptionType)
        subscriptionType = subscriptionTypeDecoded
    }
}