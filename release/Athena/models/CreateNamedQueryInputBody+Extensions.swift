// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateNamedQueryInputBody: Equatable {
    public let name: String?
    public let description: String?
    public let database: String?
    public let queryString: String?
    public let clientRequestToken: String?
    public let workGroup: String?
}

extension CreateNamedQueryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case database = "Database"
        case description = "Description"
        case name = "Name"
        case queryString = "QueryString"
        case workGroup = "WorkGroup"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let databaseDecoded = try containerValues.decodeIfPresent(String.self, forKey: .database)
        database = databaseDecoded
        let queryStringDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryString)
        queryString = queryStringDecoded
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
        let workGroupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .workGroup)
        workGroup = workGroupDecoded
    }
}