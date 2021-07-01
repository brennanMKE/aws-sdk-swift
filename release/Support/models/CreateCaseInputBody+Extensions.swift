// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateCaseInputBody: Equatable {
    public let subject: String?
    public let serviceCode: String?
    public let severityCode: String?
    public let categoryCode: String?
    public let communicationBody: String?
    public let ccEmailAddresses: [String]?
    public let language: String?
    public let issueType: String?
    public let attachmentSetId: String?
}

extension CreateCaseInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attachmentSetId
        case categoryCode
        case ccEmailAddresses
        case communicationBody
        case issueType
        case language
        case serviceCode
        case severityCode
        case subject
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subjectDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subject)
        subject = subjectDecoded
        let serviceCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceCode)
        serviceCode = serviceCodeDecoded
        let severityCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .severityCode)
        severityCode = severityCodeDecoded
        let categoryCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .categoryCode)
        categoryCode = categoryCodeDecoded
        let communicationBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .communicationBody)
        communicationBody = communicationBodyDecoded
        let ccEmailAddressesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ccEmailAddresses)
        var ccEmailAddressesDecoded0:[String]? = nil
        if let ccEmailAddressesContainer = ccEmailAddressesContainer {
            ccEmailAddressesDecoded0 = [String]()
            for string0 in ccEmailAddressesContainer {
                if let string0 = string0 {
                    ccEmailAddressesDecoded0?.append(string0)
                }
            }
        }
        ccEmailAddresses = ccEmailAddressesDecoded0
        let languageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .language)
        language = languageDecoded
        let issueTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .issueType)
        issueType = issueTypeDecoded
        let attachmentSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attachmentSetId)
        attachmentSetId = attachmentSetIdDecoded
    }
}