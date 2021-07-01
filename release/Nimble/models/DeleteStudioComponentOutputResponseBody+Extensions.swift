// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteStudioComponentOutputResponseBody: Equatable {
    public let studioComponent: StudioComponent?
}

extension DeleteStudioComponentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case studioComponent = "studioComponent"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let studioComponentDecoded = try containerValues.decodeIfPresent(StudioComponent.self, forKey: .studioComponent)
        studioComponent = studioComponentDecoded
    }
}