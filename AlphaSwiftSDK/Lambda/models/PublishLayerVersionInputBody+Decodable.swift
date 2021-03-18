// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct PublishLayerVersionInputBody: Equatable {
    public let description: String?
    public let content: LayerVersionContentInput?
    public let compatibleRuntimes: [Runtime]?
    public let licenseInfo: String?
}

extension PublishLayerVersionInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case compatibleRuntimes = "CompatibleRuntimes"
        case content = "Content"
        case description = "Description"
        case licenseInfo = "LicenseInfo"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let contentDecoded = try containerValues.decodeIfPresent(LayerVersionContentInput.self, forKey: .content)
        content = contentDecoded
        let compatibleRuntimesContainer = try containerValues.decodeIfPresent([Runtime].self, forKey: .compatibleRuntimes)
        var compatibleRuntimesDecoded0:[Runtime]? = nil
        if let compatibleRuntimesContainer = compatibleRuntimesContainer {
            compatibleRuntimesDecoded0 = [Runtime]()
            for string0 in compatibleRuntimesContainer {
                compatibleRuntimesDecoded0?.append(string0)
            }
        }
        compatibleRuntimes = compatibleRuntimesDecoded0
        let licenseInfoDecoded = try containerValues.decodeIfPresent(String.self, forKey: .licenseInfo)
        licenseInfo = licenseInfoDecoded
    }
}
