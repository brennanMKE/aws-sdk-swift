// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension KeyMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aWSAccountId = "AWSAccountId"
        case arn = "Arn"
        case cloudHsmClusterId = "CloudHsmClusterId"
        case creationDate = "CreationDate"
        case customKeyStoreId = "CustomKeyStoreId"
        case customerMasterKeySpec = "CustomerMasterKeySpec"
        case deletionDate = "DeletionDate"
        case description = "Description"
        case enabled = "Enabled"
        case encryptionAlgorithms = "EncryptionAlgorithms"
        case expirationModel = "ExpirationModel"
        case keyId = "KeyId"
        case keyManager = "KeyManager"
        case keyState = "KeyState"
        case keyUsage = "KeyUsage"
        case origin = "Origin"
        case signingAlgorithms = "SigningAlgorithms"
        case validTo = "ValidTo"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aWSAccountId = aWSAccountId {
            try encodeContainer.encode(aWSAccountId, forKey: .aWSAccountId)
        }
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let cloudHsmClusterId = cloudHsmClusterId {
            try encodeContainer.encode(cloudHsmClusterId, forKey: .cloudHsmClusterId)
        }
        if let creationDate = creationDate {
            try encodeContainer.encode(creationDate.timeIntervalSince1970, forKey: .creationDate)
        }
        if let customKeyStoreId = customKeyStoreId {
            try encodeContainer.encode(customKeyStoreId, forKey: .customKeyStoreId)
        }
        if let customerMasterKeySpec = customerMasterKeySpec {
            try encodeContainer.encode(customerMasterKeySpec.rawValue, forKey: .customerMasterKeySpec)
        }
        if let deletionDate = deletionDate {
            try encodeContainer.encode(deletionDate.timeIntervalSince1970, forKey: .deletionDate)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if enabled != false {
            try encodeContainer.encode(enabled, forKey: .enabled)
        }
        if let encryptionAlgorithms = encryptionAlgorithms {
            var encryptionAlgorithmsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .encryptionAlgorithms)
            for encryptionalgorithmspeclist0 in encryptionAlgorithms {
                try encryptionAlgorithmsContainer.encode(encryptionalgorithmspeclist0.rawValue)
            }
        }
        if let expirationModel = expirationModel {
            try encodeContainer.encode(expirationModel.rawValue, forKey: .expirationModel)
        }
        if let keyId = keyId {
            try encodeContainer.encode(keyId, forKey: .keyId)
        }
        if let keyManager = keyManager {
            try encodeContainer.encode(keyManager.rawValue, forKey: .keyManager)
        }
        if let keyState = keyState {
            try encodeContainer.encode(keyState.rawValue, forKey: .keyState)
        }
        if let keyUsage = keyUsage {
            try encodeContainer.encode(keyUsage.rawValue, forKey: .keyUsage)
        }
        if let origin = origin {
            try encodeContainer.encode(origin.rawValue, forKey: .origin)
        }
        if let signingAlgorithms = signingAlgorithms {
            var signingAlgorithmsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .signingAlgorithms)
            for signingalgorithmspeclist0 in signingAlgorithms {
                try signingAlgorithmsContainer.encode(signingalgorithmspeclist0.rawValue)
            }
        }
        if let validTo = validTo {
            try encodeContainer.encode(validTo.timeIntervalSince1970, forKey: .validTo)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aWSAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aWSAccountId)
        aWSAccountId = aWSAccountIdDecoded
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
        let enabledDecoded = try containerValues.decode(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let keyUsageDecoded = try containerValues.decodeIfPresent(KeyUsageType.self, forKey: .keyUsage)
        keyUsage = keyUsageDecoded
        let keyStateDecoded = try containerValues.decodeIfPresent(KeyState.self, forKey: .keyState)
        keyState = keyStateDecoded
        let deletionDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .deletionDate)
        deletionDate = deletionDateDecoded
        let validToDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .validTo)
        validTo = validToDecoded
        let originDecoded = try containerValues.decodeIfPresent(OriginType.self, forKey: .origin)
        origin = originDecoded
        let customKeyStoreIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customKeyStoreId)
        customKeyStoreId = customKeyStoreIdDecoded
        let cloudHsmClusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cloudHsmClusterId)
        cloudHsmClusterId = cloudHsmClusterIdDecoded
        let expirationModelDecoded = try containerValues.decodeIfPresent(ExpirationModelType.self, forKey: .expirationModel)
        expirationModel = expirationModelDecoded
        let keyManagerDecoded = try containerValues.decodeIfPresent(KeyManagerType.self, forKey: .keyManager)
        keyManager = keyManagerDecoded
        let customerMasterKeySpecDecoded = try containerValues.decodeIfPresent(CustomerMasterKeySpec.self, forKey: .customerMasterKeySpec)
        customerMasterKeySpec = customerMasterKeySpecDecoded
        let encryptionAlgorithmsContainer = try containerValues.decodeIfPresent([EncryptionAlgorithmSpec?].self, forKey: .encryptionAlgorithms)
        var encryptionAlgorithmsDecoded0:[EncryptionAlgorithmSpec]? = nil
        if let encryptionAlgorithmsContainer = encryptionAlgorithmsContainer {
            encryptionAlgorithmsDecoded0 = [EncryptionAlgorithmSpec]()
            for string0 in encryptionAlgorithmsContainer {
                if let string0 = string0 {
                    encryptionAlgorithmsDecoded0?.append(string0)
                }
            }
        }
        encryptionAlgorithms = encryptionAlgorithmsDecoded0
        let signingAlgorithmsContainer = try containerValues.decodeIfPresent([SigningAlgorithmSpec?].self, forKey: .signingAlgorithms)
        var signingAlgorithmsDecoded0:[SigningAlgorithmSpec]? = nil
        if let signingAlgorithmsContainer = signingAlgorithmsContainer {
            signingAlgorithmsDecoded0 = [SigningAlgorithmSpec]()
            for string0 in signingAlgorithmsContainer {
                if let string0 = string0 {
                    signingAlgorithmsDecoded0?.append(string0)
                }
            }
        }
        signingAlgorithms = signingAlgorithmsDecoded0
    }
}