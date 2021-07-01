// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SecretsManagerSecretResourceData: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case additionalStagingLabelsToDownload = "AdditionalStagingLabelsToDownload"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aRN = aRN {
            try encodeContainer.encode(aRN, forKey: .aRN)
        }
        if let additionalStagingLabelsToDownload = additionalStagingLabelsToDownload {
            var additionalStagingLabelsToDownloadContainer = encodeContainer.nestedUnkeyedContainer(forKey: .additionalStagingLabelsToDownload)
            for __listof__string0 in additionalStagingLabelsToDownload {
                try additionalStagingLabelsToDownloadContainer.encode(__listof__string0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
        let additionalStagingLabelsToDownloadContainer = try containerValues.decodeIfPresent([String?].self, forKey: .additionalStagingLabelsToDownload)
        var additionalStagingLabelsToDownloadDecoded0:[String]? = nil
        if let additionalStagingLabelsToDownloadContainer = additionalStagingLabelsToDownloadContainer {
            additionalStagingLabelsToDownloadDecoded0 = [String]()
            for string0 in additionalStagingLabelsToDownloadContainer {
                if let string0 = string0 {
                    additionalStagingLabelsToDownloadDecoded0?.append(string0)
                }
            }
        }
        additionalStagingLabelsToDownload = additionalStagingLabelsToDownloadDecoded0
    }
}