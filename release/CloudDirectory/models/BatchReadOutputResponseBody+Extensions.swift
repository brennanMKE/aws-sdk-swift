// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchReadOutputResponseBody: Equatable {
    public let responses: [BatchReadOperationResponse]?
}

extension BatchReadOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case responses = "Responses"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let responsesContainer = try containerValues.decodeIfPresent([BatchReadOperationResponse?].self, forKey: .responses)
        var responsesDecoded0:[BatchReadOperationResponse]? = nil
        if let responsesContainer = responsesContainer {
            responsesDecoded0 = [BatchReadOperationResponse]()
            for structure0 in responsesContainer {
                if let structure0 = structure0 {
                    responsesDecoded0?.append(structure0)
                }
            }
        }
        responses = responsesDecoded0
    }
}