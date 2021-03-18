// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct CreateAliasInputBody: Equatable {
    public let name: String?
    public let functionVersion: String?
    public let description: String?
    public let routingConfig: AliasRoutingConfiguration?
}

extension CreateAliasInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case description = "Description"
        case functionVersion = "FunctionVersion"
        case name = "Name"
        case routingConfig = "RoutingConfig"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let functionVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionVersion)
        functionVersion = functionVersionDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let routingConfigDecoded = try containerValues.decodeIfPresent(AliasRoutingConfiguration.self, forKey: .routingConfig)
        routingConfig = routingConfigDecoded
    }
}
