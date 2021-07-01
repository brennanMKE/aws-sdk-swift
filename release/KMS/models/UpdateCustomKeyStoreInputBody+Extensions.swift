// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateCustomKeyStoreInputBody: Equatable {
    public let customKeyStoreId: String?
    public let newCustomKeyStoreName: String?
    public let keyStorePassword: String?
    public let cloudHsmClusterId: String?
}

extension UpdateCustomKeyStoreInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cloudHsmClusterId = "CloudHsmClusterId"
        case customKeyStoreId = "CustomKeyStoreId"
        case keyStorePassword = "KeyStorePassword"
        case newCustomKeyStoreName = "NewCustomKeyStoreName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let customKeyStoreIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customKeyStoreId)
        customKeyStoreId = customKeyStoreIdDecoded
        let newCustomKeyStoreNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .newCustomKeyStoreName)
        newCustomKeyStoreName = newCustomKeyStoreNameDecoded
        let keyStorePasswordDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyStorePassword)
        keyStorePassword = keyStorePasswordDecoded
        let cloudHsmClusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cloudHsmClusterId)
        cloudHsmClusterId = cloudHsmClusterIdDecoded
    }
}