// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateRecipeJobInputBody: Equatable {
    public let encryptionKeyArn: String?
    public let encryptionMode: EncryptionMode?
    public let logSubscription: LogSubscription?
    public let maxCapacity: Int
    public let maxRetries: Int
    public let outputs: [Output]?
    public let roleArn: String?
    public let timeout: Int
}

extension UpdateRecipeJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case encryptionKeyArn = "EncryptionKeyArn"
        case encryptionMode = "EncryptionMode"
        case logSubscription = "LogSubscription"
        case maxCapacity = "MaxCapacity"
        case maxRetries = "MaxRetries"
        case outputs = "Outputs"
        case roleArn = "RoleArn"
        case timeout = "Timeout"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let encryptionKeyArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .encryptionKeyArn)
        encryptionKeyArn = encryptionKeyArnDecoded
        let encryptionModeDecoded = try containerValues.decodeIfPresent(EncryptionMode.self, forKey: .encryptionMode)
        encryptionMode = encryptionModeDecoded
        let logSubscriptionDecoded = try containerValues.decodeIfPresent(LogSubscription.self, forKey: .logSubscription)
        logSubscription = logSubscriptionDecoded
        let maxCapacityDecoded = try containerValues.decode(Int.self, forKey: .maxCapacity)
        maxCapacity = maxCapacityDecoded
        let maxRetriesDecoded = try containerValues.decode(Int.self, forKey: .maxRetries)
        maxRetries = maxRetriesDecoded
        let outputsContainer = try containerValues.decodeIfPresent([Output?].self, forKey: .outputs)
        var outputsDecoded0:[Output]? = nil
        if let outputsContainer = outputsContainer {
            outputsDecoded0 = [Output]()
            for structure0 in outputsContainer {
                if let structure0 = structure0 {
                    outputsDecoded0?.append(structure0)
                }
            }
        }
        outputs = outputsDecoded0
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let timeoutDecoded = try containerValues.decode(Int.self, forKey: .timeout)
        timeout = timeoutDecoded
    }
}