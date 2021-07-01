// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FailedRemediationExceptionBatch: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case failedItems = "FailedItems"
        case failureMessage = "FailureMessage"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let failedItems = failedItems {
            var failedItemsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .failedItems)
            for remediationexceptions0 in failedItems {
                try failedItemsContainer.encode(remediationexceptions0)
            }
        }
        if let failureMessage = failureMessage {
            try encodeContainer.encode(failureMessage, forKey: .failureMessage)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let failureMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureMessage)
        failureMessage = failureMessageDecoded
        let failedItemsContainer = try containerValues.decodeIfPresent([RemediationException?].self, forKey: .failedItems)
        var failedItemsDecoded0:[RemediationException]? = nil
        if let failedItemsContainer = failedItemsContainer {
            failedItemsDecoded0 = [RemediationException]()
            for structure0 in failedItemsContainer {
                if let structure0 = structure0 {
                    failedItemsDecoded0?.append(structure0)
                }
            }
        }
        failedItems = failedItemsDecoded0
    }
}