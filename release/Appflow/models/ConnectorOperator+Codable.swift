// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConnectorOperator: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case amplitude = "Amplitude"
        case datadog = "Datadog"
        case dynatrace = "Dynatrace"
        case googleAnalytics = "GoogleAnalytics"
        case inforNexus = "InforNexus"
        case marketo = "Marketo"
        case s3 = "S3"
        case salesforce = "Salesforce"
        case serviceNow = "ServiceNow"
        case singular = "Singular"
        case slack = "Slack"
        case trendmicro = "Trendmicro"
        case veeva = "Veeva"
        case zendesk = "Zendesk"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let amplitude = amplitude {
            try encodeContainer.encode(amplitude.rawValue, forKey: .amplitude)
        }
        if let datadog = datadog {
            try encodeContainer.encode(datadog.rawValue, forKey: .datadog)
        }
        if let dynatrace = dynatrace {
            try encodeContainer.encode(dynatrace.rawValue, forKey: .dynatrace)
        }
        if let googleAnalytics = googleAnalytics {
            try encodeContainer.encode(googleAnalytics.rawValue, forKey: .googleAnalytics)
        }
        if let inforNexus = inforNexus {
            try encodeContainer.encode(inforNexus.rawValue, forKey: .inforNexus)
        }
        if let marketo = marketo {
            try encodeContainer.encode(marketo.rawValue, forKey: .marketo)
        }
        if let s3 = s3 {
            try encodeContainer.encode(s3.rawValue, forKey: .s3)
        }
        if let salesforce = salesforce {
            try encodeContainer.encode(salesforce.rawValue, forKey: .salesforce)
        }
        if let serviceNow = serviceNow {
            try encodeContainer.encode(serviceNow.rawValue, forKey: .serviceNow)
        }
        if let singular = singular {
            try encodeContainer.encode(singular.rawValue, forKey: .singular)
        }
        if let slack = slack {
            try encodeContainer.encode(slack.rawValue, forKey: .slack)
        }
        if let trendmicro = trendmicro {
            try encodeContainer.encode(trendmicro.rawValue, forKey: .trendmicro)
        }
        if let veeva = veeva {
            try encodeContainer.encode(veeva.rawValue, forKey: .veeva)
        }
        if let zendesk = zendesk {
            try encodeContainer.encode(zendesk.rawValue, forKey: .zendesk)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let amplitudeDecoded = try containerValues.decodeIfPresent(AmplitudeConnectorOperator.self, forKey: .amplitude)
        amplitude = amplitudeDecoded
        let datadogDecoded = try containerValues.decodeIfPresent(DatadogConnectorOperator.self, forKey: .datadog)
        datadog = datadogDecoded
        let dynatraceDecoded = try containerValues.decodeIfPresent(DynatraceConnectorOperator.self, forKey: .dynatrace)
        dynatrace = dynatraceDecoded
        let googleAnalyticsDecoded = try containerValues.decodeIfPresent(GoogleAnalyticsConnectorOperator.self, forKey: .googleAnalytics)
        googleAnalytics = googleAnalyticsDecoded
        let inforNexusDecoded = try containerValues.decodeIfPresent(InforNexusConnectorOperator.self, forKey: .inforNexus)
        inforNexus = inforNexusDecoded
        let marketoDecoded = try containerValues.decodeIfPresent(MarketoConnectorOperator.self, forKey: .marketo)
        marketo = marketoDecoded
        let s3Decoded = try containerValues.decodeIfPresent(S3ConnectorOperator.self, forKey: .s3)
        s3 = s3Decoded
        let salesforceDecoded = try containerValues.decodeIfPresent(SalesforceConnectorOperator.self, forKey: .salesforce)
        salesforce = salesforceDecoded
        let serviceNowDecoded = try containerValues.decodeIfPresent(ServiceNowConnectorOperator.self, forKey: .serviceNow)
        serviceNow = serviceNowDecoded
        let singularDecoded = try containerValues.decodeIfPresent(SingularConnectorOperator.self, forKey: .singular)
        singular = singularDecoded
        let slackDecoded = try containerValues.decodeIfPresent(SlackConnectorOperator.self, forKey: .slack)
        slack = slackDecoded
        let trendmicroDecoded = try containerValues.decodeIfPresent(TrendmicroConnectorOperator.self, forKey: .trendmicro)
        trendmicro = trendmicroDecoded
        let veevaDecoded = try containerValues.decodeIfPresent(VeevaConnectorOperator.self, forKey: .veeva)
        veeva = veevaDecoded
        let zendeskDecoded = try containerValues.decodeIfPresent(ZendeskConnectorOperator.self, forKey: .zendesk)
        zendesk = zendeskDecoded
    }
}