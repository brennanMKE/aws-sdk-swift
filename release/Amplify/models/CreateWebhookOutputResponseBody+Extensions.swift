// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateWebhookOutputResponseBody: Equatable {
    public let webhook: Webhook?
}

extension CreateWebhookOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case webhook
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let webhookDecoded = try containerValues.decodeIfPresent(Webhook.self, forKey: .webhook)
        webhook = webhookDecoded
    }
}