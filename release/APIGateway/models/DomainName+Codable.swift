// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DomainName: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateName
        case certificateUploadDate
        case distributionDomainName
        case distributionHostedZoneId
        case domainName
        case domainNameStatus
        case domainNameStatusMessage
        case endpointConfiguration
        case mutualTlsAuthentication
        case regionalCertificateArn
        case regionalCertificateName
        case regionalDomainName
        case regionalHostedZoneId
        case securityPolicy
        case tags
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificateArn = certificateArn {
            try encodeContainer.encode(certificateArn, forKey: .certificateArn)
        }
        if let certificateName = certificateName {
            try encodeContainer.encode(certificateName, forKey: .certificateName)
        }
        if let certificateUploadDate = certificateUploadDate {
            try encodeContainer.encode(certificateUploadDate.timeIntervalSince1970, forKey: .certificateUploadDate)
        }
        if let distributionDomainName = distributionDomainName {
            try encodeContainer.encode(distributionDomainName, forKey: .distributionDomainName)
        }
        if let distributionHostedZoneId = distributionHostedZoneId {
            try encodeContainer.encode(distributionHostedZoneId, forKey: .distributionHostedZoneId)
        }
        if let domainName = domainName {
            try encodeContainer.encode(domainName, forKey: .domainName)
        }
        if let domainNameStatus = domainNameStatus {
            try encodeContainer.encode(domainNameStatus.rawValue, forKey: .domainNameStatus)
        }
        if let domainNameStatusMessage = domainNameStatusMessage {
            try encodeContainer.encode(domainNameStatusMessage, forKey: .domainNameStatusMessage)
        }
        if let endpointConfiguration = endpointConfiguration {
            try encodeContainer.encode(endpointConfiguration, forKey: .endpointConfiguration)
        }
        if let mutualTlsAuthentication = mutualTlsAuthentication {
            try encodeContainer.encode(mutualTlsAuthentication, forKey: .mutualTlsAuthentication)
        }
        if let regionalCertificateArn = regionalCertificateArn {
            try encodeContainer.encode(regionalCertificateArn, forKey: .regionalCertificateArn)
        }
        if let regionalCertificateName = regionalCertificateName {
            try encodeContainer.encode(regionalCertificateName, forKey: .regionalCertificateName)
        }
        if let regionalDomainName = regionalDomainName {
            try encodeContainer.encode(regionalDomainName, forKey: .regionalDomainName)
        }
        if let regionalHostedZoneId = regionalHostedZoneId {
            try encodeContainer.encode(regionalHostedZoneId, forKey: .regionalHostedZoneId)
        }
        if let securityPolicy = securityPolicy {
            try encodeContainer.encode(securityPolicy.rawValue, forKey: .securityPolicy)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, mapofstringtostring0) in tags {
                try tagsContainer.encode(mapofstringtostring0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainName)
        domainName = domainNameDecoded
        let certificateNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificateName)
        certificateName = certificateNameDecoded
        let certificateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificateArn)
        certificateArn = certificateArnDecoded
        let certificateUploadDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .certificateUploadDate)
        certificateUploadDate = certificateUploadDateDecoded
        let regionalDomainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regionalDomainName)
        regionalDomainName = regionalDomainNameDecoded
        let regionalHostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regionalHostedZoneId)
        regionalHostedZoneId = regionalHostedZoneIdDecoded
        let regionalCertificateNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regionalCertificateName)
        regionalCertificateName = regionalCertificateNameDecoded
        let regionalCertificateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regionalCertificateArn)
        regionalCertificateArn = regionalCertificateArnDecoded
        let distributionDomainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .distributionDomainName)
        distributionDomainName = distributionDomainNameDecoded
        let distributionHostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .distributionHostedZoneId)
        distributionHostedZoneId = distributionHostedZoneIdDecoded
        let endpointConfigurationDecoded = try containerValues.decodeIfPresent(EndpointConfiguration.self, forKey: .endpointConfiguration)
        endpointConfiguration = endpointConfigurationDecoded
        let domainNameStatusDecoded = try containerValues.decodeIfPresent(DomainNameStatus.self, forKey: .domainNameStatus)
        domainNameStatus = domainNameStatusDecoded
        let domainNameStatusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainNameStatusMessage)
        domainNameStatusMessage = domainNameStatusMessageDecoded
        let securityPolicyDecoded = try containerValues.decodeIfPresent(SecurityPolicy.self, forKey: .securityPolicy)
        securityPolicy = securityPolicyDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, string0) in tagsContainer {
                if let string0 = string0 {
                    tagsDecoded0?[key0] = string0
                }
            }
        }
        tags = tagsDecoded0
        let mutualTlsAuthenticationDecoded = try containerValues.decodeIfPresent(MutualTlsAuthentication.self, forKey: .mutualTlsAuthentication)
        mutualTlsAuthentication = mutualTlsAuthenticationDecoded
    }
}