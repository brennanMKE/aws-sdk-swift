// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateThingGroupOutputResponseBody: Equatable {
    public let thingGroupName: String?
    public let thingGroupArn: String?
    public let thingGroupId: String?
}

extension CreateThingGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case thingGroupArn
        case thingGroupId
        case thingGroupName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let thingGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingGroupName)
        thingGroupName = thingGroupNameDecoded
        let thingGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingGroupArn)
        thingGroupArn = thingGroupArnDecoded
        let thingGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingGroupId)
        thingGroupId = thingGroupIdDecoded
    }
}