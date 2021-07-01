// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InvalidObjectStateBody: Equatable {
    public let storageClass: StorageClass?
    public let accessTier: IntelligentTieringAccessTier?
}

extension InvalidObjectStateBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accessTier = "AccessTier"
        case storageClass = "StorageClass"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let storageClassDecoded = try containerValues.decodeIfPresent(StorageClass.self, forKey: .storageClass)
        storageClass = storageClassDecoded
        let accessTierDecoded = try containerValues.decodeIfPresent(IntelligentTieringAccessTier.self, forKey: .accessTier)
        accessTier = accessTierDecoded
    }
}