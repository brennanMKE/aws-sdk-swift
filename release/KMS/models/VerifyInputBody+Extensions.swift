// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct VerifyInputBody: Equatable {
    public let keyId: String?
    public let message: Data?
    public let messageType: MessageType?
    public let signature: Data?
    public let signingAlgorithm: SigningAlgorithmSpec?
    public let grantTokens: [String]?
}

extension VerifyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case grantTokens = "GrantTokens"
        case keyId = "KeyId"
        case message = "Message"
        case messageType = "MessageType"
        case signature = "Signature"
        case signingAlgorithm = "SigningAlgorithm"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
        let messageDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .message)
        message = messageDecoded
        let messageTypeDecoded = try containerValues.decodeIfPresent(MessageType.self, forKey: .messageType)
        messageType = messageTypeDecoded
        let signatureDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .signature)
        signature = signatureDecoded
        let signingAlgorithmDecoded = try containerValues.decodeIfPresent(SigningAlgorithmSpec.self, forKey: .signingAlgorithm)
        signingAlgorithm = signingAlgorithmDecoded
        let grantTokensContainer = try containerValues.decodeIfPresent([String?].self, forKey: .grantTokens)
        var grantTokensDecoded0:[String]? = nil
        if let grantTokensContainer = grantTokensContainer {
            grantTokensDecoded0 = [String]()
            for string0 in grantTokensContainer {
                if let string0 = string0 {
                    grantTokensDecoded0?.append(string0)
                }
            }
        }
        grantTokens = grantTokensDecoded0
    }
}