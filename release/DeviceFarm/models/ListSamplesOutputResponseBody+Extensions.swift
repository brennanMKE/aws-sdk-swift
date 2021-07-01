// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSamplesOutputResponseBody: Equatable {
    public let samples: [Sample]?
    public let nextToken: String?
}

extension ListSamplesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case samples
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let samplesContainer = try containerValues.decodeIfPresent([Sample?].self, forKey: .samples)
        var samplesDecoded0:[Sample]? = nil
        if let samplesContainer = samplesContainer {
            samplesDecoded0 = [Sample]()
            for structure0 in samplesContainer {
                if let structure0 = structure0 {
                    samplesDecoded0?.append(structure0)
                }
            }
        }
        samples = samplesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}