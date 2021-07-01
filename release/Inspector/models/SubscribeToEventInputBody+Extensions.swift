// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SubscribeToEventInputBody: Equatable {
    public let resourceArn: String?
    public let event: InspectorEvent?
    public let topicArn: String?
}

extension SubscribeToEventInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case event
        case resourceArn
        case topicArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceArn)
        resourceArn = resourceArnDecoded
        let eventDecoded = try containerValues.decodeIfPresent(InspectorEvent.self, forKey: .event)
        event = eventDecoded
        let topicArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .topicArn)
        topicArn = topicArnDecoded
    }
}