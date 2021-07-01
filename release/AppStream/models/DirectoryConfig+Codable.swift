// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DirectoryConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdTime = "CreatedTime"
        case directoryName = "DirectoryName"
        case organizationalUnitDistinguishedNames = "OrganizationalUnitDistinguishedNames"
        case serviceAccountCredentials = "ServiceAccountCredentials"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime.timeIntervalSince1970, forKey: .createdTime)
        }
        if let directoryName = directoryName {
            try encodeContainer.encode(directoryName, forKey: .directoryName)
        }
        if let organizationalUnitDistinguishedNames = organizationalUnitDistinguishedNames {
            var organizationalUnitDistinguishedNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .organizationalUnitDistinguishedNames)
            for organizationalunitdistinguishednameslist0 in organizationalUnitDistinguishedNames {
                try organizationalUnitDistinguishedNamesContainer.encode(organizationalunitdistinguishednameslist0)
            }
        }
        if let serviceAccountCredentials = serviceAccountCredentials {
            try encodeContainer.encode(serviceAccountCredentials, forKey: .serviceAccountCredentials)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let directoryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .directoryName)
        directoryName = directoryNameDecoded
        let organizationalUnitDistinguishedNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .organizationalUnitDistinguishedNames)
        var organizationalUnitDistinguishedNamesDecoded0:[String]? = nil
        if let organizationalUnitDistinguishedNamesContainer = organizationalUnitDistinguishedNamesContainer {
            organizationalUnitDistinguishedNamesDecoded0 = [String]()
            for string0 in organizationalUnitDistinguishedNamesContainer {
                if let string0 = string0 {
                    organizationalUnitDistinguishedNamesDecoded0?.append(string0)
                }
            }
        }
        organizationalUnitDistinguishedNames = organizationalUnitDistinguishedNamesDecoded0
        let serviceAccountCredentialsDecoded = try containerValues.decodeIfPresent(ServiceAccountCredentials.self, forKey: .serviceAccountCredentials)
        serviceAccountCredentials = serviceAccountCredentialsDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
    }
}