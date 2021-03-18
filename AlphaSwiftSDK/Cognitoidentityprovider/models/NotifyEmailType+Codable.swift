// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension NotifyEmailType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case htmlBody = "HtmlBody"
        case subject = "Subject"
        case textBody = "TextBody"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let htmlBody = htmlBody {
            try container.encode(htmlBody, forKey: .htmlBody)
        }
        if let subject = subject {
            try container.encode(subject, forKey: .subject)
        }
        if let textBody = textBody {
            try container.encode(textBody, forKey: .textBody)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subjectDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subject)
        subject = subjectDecoded
        let htmlBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .htmlBody)
        htmlBody = htmlBodyDecoded
        let textBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .textBody)
        textBody = textBodyDecoded
    }
}
