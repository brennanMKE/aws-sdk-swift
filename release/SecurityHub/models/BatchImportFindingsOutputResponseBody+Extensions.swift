// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchImportFindingsOutputResponseBody: Equatable {
    public let failedCount: Int
    public let successCount: Int
    public let failedFindings: [ImportFindingsError]?
}

extension BatchImportFindingsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case failedCount = "FailedCount"
        case failedFindings = "FailedFindings"
        case successCount = "SuccessCount"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let failedCountDecoded = try containerValues.decode(Int.self, forKey: .failedCount)
        failedCount = failedCountDecoded
        let successCountDecoded = try containerValues.decode(Int.self, forKey: .successCount)
        successCount = successCountDecoded
        let failedFindingsContainer = try containerValues.decodeIfPresent([ImportFindingsError?].self, forKey: .failedFindings)
        var failedFindingsDecoded0:[ImportFindingsError]? = nil
        if let failedFindingsContainer = failedFindingsContainer {
            failedFindingsDecoded0 = [ImportFindingsError]()
            for structure0 in failedFindingsContainer {
                if let structure0 = structure0 {
                    failedFindingsDecoded0?.append(structure0)
                }
            }
        }
        failedFindings = failedFindingsDecoded0
    }
}