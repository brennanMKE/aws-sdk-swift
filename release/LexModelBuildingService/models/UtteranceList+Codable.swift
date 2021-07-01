// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UtteranceList: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case botVersion
        case utterances
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let botVersion = botVersion {
            try encodeContainer.encode(botVersion, forKey: .botVersion)
        }
        if let utterances = utterances {
            var utterancesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .utterances)
            for listofutterance0 in utterances {
                try utterancesContainer.encode(listofutterance0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let botVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .botVersion)
        botVersion = botVersionDecoded
        let utterancesContainer = try containerValues.decodeIfPresent([UtteranceData?].self, forKey: .utterances)
        var utterancesDecoded0:[UtteranceData]? = nil
        if let utterancesContainer = utterancesContainer {
            utterancesDecoded0 = [UtteranceData]()
            for structure0 in utterancesContainer {
                if let structure0 = structure0 {
                    utterancesDecoded0?.append(structure0)
                }
            }
        }
        utterances = utterancesDecoded0
    }
}