// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetEvidenceByEvidenceFolderOutputResponseBody: Equatable {
    public let evidence: [Evidence]?
    public let nextToken: String?
}

extension GetEvidenceByEvidenceFolderOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case evidence
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let evidenceContainer = try containerValues.decodeIfPresent([Evidence?].self, forKey: .evidence)
        var evidenceDecoded0:[Evidence]? = nil
        if let evidenceContainer = evidenceContainer {
            evidenceDecoded0 = [Evidence]()
            for structure0 in evidenceContainer {
                if let structure0 = structure0 {
                    evidenceDecoded0?.append(structure0)
                }
            }
        }
        evidence = evidenceDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}