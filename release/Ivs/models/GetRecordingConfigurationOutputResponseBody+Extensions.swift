// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRecordingConfigurationOutputResponseBody: Equatable {
    public let recordingConfiguration: RecordingConfiguration?
}

extension GetRecordingConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case recordingConfiguration
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recordingConfigurationDecoded = try containerValues.decodeIfPresent(RecordingConfiguration.self, forKey: .recordingConfiguration)
        recordingConfiguration = recordingConfigurationDecoded
    }
}