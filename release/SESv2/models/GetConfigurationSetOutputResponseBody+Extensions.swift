// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetConfigurationSetOutputResponseBody: Equatable {
    public let configurationSetName: String?
    public let trackingOptions: TrackingOptions?
    public let deliveryOptions: DeliveryOptions?
    public let reputationOptions: ReputationOptions?
    public let sendingOptions: SendingOptions?
    public let tags: [Tag]?
    public let suppressionOptions: SuppressionOptions?
}

extension GetConfigurationSetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configurationSetName = "ConfigurationSetName"
        case deliveryOptions = "DeliveryOptions"
        case reputationOptions = "ReputationOptions"
        case sendingOptions = "SendingOptions"
        case suppressionOptions = "SuppressionOptions"
        case tags = "Tags"
        case trackingOptions = "TrackingOptions"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configurationSetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configurationSetName)
        configurationSetName = configurationSetNameDecoded
        let trackingOptionsDecoded = try containerValues.decodeIfPresent(TrackingOptions.self, forKey: .trackingOptions)
        trackingOptions = trackingOptionsDecoded
        let deliveryOptionsDecoded = try containerValues.decodeIfPresent(DeliveryOptions.self, forKey: .deliveryOptions)
        deliveryOptions = deliveryOptionsDecoded
        let reputationOptionsDecoded = try containerValues.decodeIfPresent(ReputationOptions.self, forKey: .reputationOptions)
        reputationOptions = reputationOptionsDecoded
        let sendingOptionsDecoded = try containerValues.decodeIfPresent(SendingOptions.self, forKey: .sendingOptions)
        sendingOptions = sendingOptionsDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let suppressionOptionsDecoded = try containerValues.decodeIfPresent(SuppressionOptions.self, forKey: .suppressionOptions)
        suppressionOptions = suppressionOptionsDecoded
    }
}