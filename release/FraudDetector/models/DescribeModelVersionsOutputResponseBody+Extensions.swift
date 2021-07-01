// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeModelVersionsOutputResponseBody: Equatable {
    public let modelVersionDetails: [ModelVersionDetail]?
    public let nextToken: String?
}

extension DescribeModelVersionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case modelVersionDetails
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modelVersionDetailsContainer = try containerValues.decodeIfPresent([ModelVersionDetail?].self, forKey: .modelVersionDetails)
        var modelVersionDetailsDecoded0:[ModelVersionDetail]? = nil
        if let modelVersionDetailsContainer = modelVersionDetailsContainer {
            modelVersionDetailsDecoded0 = [ModelVersionDetail]()
            for structure0 in modelVersionDetailsContainer {
                if let structure0 = structure0 {
                    modelVersionDetailsDecoded0?.append(structure0)
                }
            }
        }
        modelVersionDetails = modelVersionDetailsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}