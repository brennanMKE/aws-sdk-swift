// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutSecretValueOutputResponseBody: Equatable {
    public let aRN: String?
    public let name: String?
    public let versionId: String?
    public let versionStages: [String]?
}

extension PutSecretValueOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case name = "Name"
        case versionId = "VersionId"
        case versionStages = "VersionStages"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let versionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .versionId)
        versionId = versionIdDecoded
        let versionStagesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .versionStages)
        var versionStagesDecoded0:[String]? = nil
        if let versionStagesContainer = versionStagesContainer {
            versionStagesDecoded0 = [String]()
            for string0 in versionStagesContainer {
                if let string0 = string0 {
                    versionStagesDecoded0?.append(string0)
                }
            }
        }
        versionStages = versionStagesDecoded0
    }
}