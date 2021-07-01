// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateVoiceTemplateInputBody: Equatable {
    public let voiceTemplateRequest: VoiceTemplateRequest?
}

extension UpdateVoiceTemplateInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case voiceTemplateRequest = "VoiceTemplateRequest"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let voiceTemplateRequestDecoded = try containerValues.decodeIfPresent(VoiceTemplateRequest.self, forKey: .voiceTemplateRequest)
        voiceTemplateRequest = voiceTemplateRequestDecoded
    }
}