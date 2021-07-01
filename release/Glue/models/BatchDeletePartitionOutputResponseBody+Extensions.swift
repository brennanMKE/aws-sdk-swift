// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchDeletePartitionOutputResponseBody: Equatable {
    public let errors: [PartitionError]?
}

extension BatchDeletePartitionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case errors = "Errors"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorsContainer = try containerValues.decodeIfPresent([PartitionError?].self, forKey: .errors)
        var errorsDecoded0:[PartitionError]? = nil
        if let errorsContainer = errorsContainer {
            errorsDecoded0 = [PartitionError]()
            for structure0 in errorsContainer {
                if let structure0 = structure0 {
                    errorsDecoded0?.append(structure0)
                }
            }
        }
        errors = errorsDecoded0
    }
}