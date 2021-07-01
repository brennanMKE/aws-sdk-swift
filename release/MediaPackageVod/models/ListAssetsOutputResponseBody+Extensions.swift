// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAssetsOutputResponseBody: Equatable {
    public let assets: [AssetShallow]?
    public let nextToken: String?
}

extension ListAssetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assets = "assets"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assetsContainer = try containerValues.decodeIfPresent([AssetShallow?].self, forKey: .assets)
        var assetsDecoded0:[AssetShallow]? = nil
        if let assetsContainer = assetsContainer {
            assetsDecoded0 = [AssetShallow]()
            for structure0 in assetsContainer {
                if let structure0 = structure0 {
                    assetsDecoded0?.append(structure0)
                }
            }
        }
        assets = assetsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}