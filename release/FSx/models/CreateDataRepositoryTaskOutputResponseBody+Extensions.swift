// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDataRepositoryTaskOutputResponseBody: Equatable {
    public let dataRepositoryTask: DataRepositoryTask?
}

extension CreateDataRepositoryTaskOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dataRepositoryTask = "DataRepositoryTask"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataRepositoryTaskDecoded = try containerValues.decodeIfPresent(DataRepositoryTask.self, forKey: .dataRepositoryTask)
        dataRepositoryTask = dataRepositoryTaskDecoded
    }
}