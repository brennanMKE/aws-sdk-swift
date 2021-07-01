// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Difference: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case afterBlob
        case beforeBlob
        case changeType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let afterBlob = afterBlob {
            try encodeContainer.encode(afterBlob, forKey: .afterBlob)
        }
        if let beforeBlob = beforeBlob {
            try encodeContainer.encode(beforeBlob, forKey: .beforeBlob)
        }
        if let changeType = changeType {
            try encodeContainer.encode(changeType.rawValue, forKey: .changeType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let beforeBlobDecoded = try containerValues.decodeIfPresent(BlobMetadata.self, forKey: .beforeBlob)
        beforeBlob = beforeBlobDecoded
        let afterBlobDecoded = try containerValues.decodeIfPresent(BlobMetadata.self, forKey: .afterBlob)
        afterBlob = afterBlobDecoded
        let changeTypeDecoded = try containerValues.decodeIfPresent(ChangeTypeEnum.self, forKey: .changeType)
        changeType = changeTypeDecoded
    }
}