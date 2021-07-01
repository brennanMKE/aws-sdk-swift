// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AccountDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case additionalContactEmailAddresses = "AdditionalContactEmailAddresses"
        case contactLanguage = "ContactLanguage"
        case mailType = "MailType"
        case reviewDetails = "ReviewDetails"
        case useCaseDescription = "UseCaseDescription"
        case websiteURL = "WebsiteURL"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let additionalContactEmailAddresses = additionalContactEmailAddresses {
            var additionalContactEmailAddressesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .additionalContactEmailAddresses)
            for additionalcontactemailaddresses0 in additionalContactEmailAddresses {
                try additionalContactEmailAddressesContainer.encode(additionalcontactemailaddresses0)
            }
        }
        if let contactLanguage = contactLanguage {
            try encodeContainer.encode(contactLanguage.rawValue, forKey: .contactLanguage)
        }
        if let mailType = mailType {
            try encodeContainer.encode(mailType.rawValue, forKey: .mailType)
        }
        if let reviewDetails = reviewDetails {
            try encodeContainer.encode(reviewDetails, forKey: .reviewDetails)
        }
        if let useCaseDescription = useCaseDescription {
            try encodeContainer.encode(useCaseDescription, forKey: .useCaseDescription)
        }
        if let websiteURL = websiteURL {
            try encodeContainer.encode(websiteURL, forKey: .websiteURL)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let mailTypeDecoded = try containerValues.decodeIfPresent(MailType.self, forKey: .mailType)
        mailType = mailTypeDecoded
        let websiteURLDecoded = try containerValues.decodeIfPresent(String.self, forKey: .websiteURL)
        websiteURL = websiteURLDecoded
        let contactLanguageDecoded = try containerValues.decodeIfPresent(ContactLanguage.self, forKey: .contactLanguage)
        contactLanguage = contactLanguageDecoded
        let useCaseDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .useCaseDescription)
        useCaseDescription = useCaseDescriptionDecoded
        let additionalContactEmailAddressesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .additionalContactEmailAddresses)
        var additionalContactEmailAddressesDecoded0:[String]? = nil
        if let additionalContactEmailAddressesContainer = additionalContactEmailAddressesContainer {
            additionalContactEmailAddressesDecoded0 = [String]()
            for string0 in additionalContactEmailAddressesContainer {
                if let string0 = string0 {
                    additionalContactEmailAddressesDecoded0?.append(string0)
                }
            }
        }
        additionalContactEmailAddresses = additionalContactEmailAddressesDecoded0
        let reviewDetailsDecoded = try containerValues.decodeIfPresent(ReviewDetails.self, forKey: .reviewDetails)
        reviewDetails = reviewDetailsDecoded
    }
}