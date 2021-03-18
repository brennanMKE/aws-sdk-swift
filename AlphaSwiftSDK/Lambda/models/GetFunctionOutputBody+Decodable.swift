// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetFunctionOutputBody: Equatable {
    public let configuration: FunctionConfiguration?
    public let code: FunctionCodeLocation?
    public let tags: [String:String]?
    public let concurrency: Concurrency?
}

extension GetFunctionOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case code = "Code"
        case concurrency = "Concurrency"
        case configuration = "Configuration"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configurationDecoded = try containerValues.decodeIfPresent(FunctionConfiguration.self, forKey: .configuration)
        configuration = configurationDecoded
        let codeDecoded = try containerValues.decodeIfPresent(FunctionCodeLocation.self, forKey: .code)
        code = codeDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                tagsDecoded0?[key0] = tagvalue0
            }
        }
        tags = tagsDecoded0
        let concurrencyDecoded = try containerValues.decodeIfPresent(Concurrency.self, forKey: .concurrency)
        concurrency = concurrencyDecoded
    }
}