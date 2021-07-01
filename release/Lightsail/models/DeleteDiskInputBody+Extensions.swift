// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteDiskInputBody: Equatable {
    public let diskName: String?
    public let forceDeleteAddOns: Bool?
}

extension DeleteDiskInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case diskName
        case forceDeleteAddOns
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let diskNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .diskName)
        diskName = diskNameDecoded
        let forceDeleteAddOnsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .forceDeleteAddOns)
        forceDeleteAddOns = forceDeleteAddOnsDecoded
    }
}