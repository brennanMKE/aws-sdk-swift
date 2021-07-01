// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListCompatibleImagesOutputResponseBody: Equatable {
    public let compatibleImages: [CompatibleImage]?
    public let nextToken: String?
}

extension ListCompatibleImagesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case compatibleImages = "CompatibleImages"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let compatibleImagesContainer = try containerValues.decodeIfPresent([CompatibleImage?].self, forKey: .compatibleImages)
        var compatibleImagesDecoded0:[CompatibleImage]? = nil
        if let compatibleImagesContainer = compatibleImagesContainer {
            compatibleImagesDecoded0 = [CompatibleImage]()
            for structure0 in compatibleImagesContainer {
                if let structure0 = structure0 {
                    compatibleImagesDecoded0?.append(structure0)
                }
            }
        }
        compatibleImages = compatibleImagesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}