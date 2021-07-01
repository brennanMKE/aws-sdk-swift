// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RegisterThingOutputResponseBody: Equatable {
    public let certificatePem: String?
    public let resourceArns: [String:String]?
}

extension RegisterThingOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case certificatePem
        case resourceArns
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let certificatePemDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificatePem)
        certificatePem = certificatePemDecoded
        let resourceArnsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .resourceArns)
        var resourceArnsDecoded0: [String:String]? = nil
        if let resourceArnsContainer = resourceArnsContainer {
            resourceArnsDecoded0 = [String:String]()
            for (key0, resourcearn0) in resourceArnsContainer {
                if let resourcearn0 = resourcearn0 {
                    resourceArnsDecoded0?[key0] = resourcearn0
                }
            }
        }
        resourceArns = resourceArnsDecoded0
    }
}