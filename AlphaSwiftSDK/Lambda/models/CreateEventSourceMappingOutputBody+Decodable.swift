// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct CreateEventSourceMappingOutputBody: Equatable {
    public let uUID: String?
    public let startingPosition: EventSourcePosition?
    public let startingPositionTimestamp: Date?
    public let batchSize: Int?
    public let maximumBatchingWindowInSeconds: Int?
    public let parallelizationFactor: Int?
    public let eventSourceArn: String?
    public let functionArn: String?
    public let lastModified: Date?
    public let lastProcessingResult: String?
    public let state: String?
    public let stateTransitionReason: String?
    public let destinationConfig: DestinationConfig?
    public let topics: [String]?
    public let queues: [String]?
    public let sourceAccessConfigurations: [SourceAccessConfiguration]?
    public let maximumRecordAgeInSeconds: Int?
    public let bisectBatchOnFunctionError: Bool?
    public let maximumRetryAttempts: Int?
}

extension CreateEventSourceMappingOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case batchSize = "BatchSize"
        case bisectBatchOnFunctionError = "BisectBatchOnFunctionError"
        case destinationConfig = "DestinationConfig"
        case eventSourceArn = "EventSourceArn"
        case functionArn = "FunctionArn"
        case lastModified = "LastModified"
        case lastProcessingResult = "LastProcessingResult"
        case maximumBatchingWindowInSeconds = "MaximumBatchingWindowInSeconds"
        case maximumRecordAgeInSeconds = "MaximumRecordAgeInSeconds"
        case maximumRetryAttempts = "MaximumRetryAttempts"
        case parallelizationFactor = "ParallelizationFactor"
        case queues = "Queues"
        case sourceAccessConfigurations = "SourceAccessConfigurations"
        case startingPosition = "StartingPosition"
        case startingPositionTimestamp = "StartingPositionTimestamp"
        case state = "State"
        case stateTransitionReason = "StateTransitionReason"
        case topics = "Topics"
        case uUID = "UUID"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let uUIDDecoded = try containerValues.decodeIfPresent(String.self, forKey: .uUID)
        uUID = uUIDDecoded
        let startingPositionDecoded = try containerValues.decodeIfPresent(EventSourcePosition.self, forKey: .startingPosition)
        startingPosition = startingPositionDecoded
        let startingPositionTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startingPositionTimestamp)
        startingPositionTimestamp = startingPositionTimestampDecoded
        let batchSizeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .batchSize)
        batchSize = batchSizeDecoded
        let maximumBatchingWindowInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumBatchingWindowInSeconds)
        maximumBatchingWindowInSeconds = maximumBatchingWindowInSecondsDecoded
        let parallelizationFactorDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .parallelizationFactor)
        parallelizationFactor = parallelizationFactorDecoded
        let eventSourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventSourceArn)
        eventSourceArn = eventSourceArnDecoded
        let functionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionArn)
        functionArn = functionArnDecoded
        let lastModifiedDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModified)
        lastModified = lastModifiedDecoded
        let lastProcessingResultDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastProcessingResult)
        lastProcessingResult = lastProcessingResultDecoded
        let stateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .state)
        state = stateDecoded
        let stateTransitionReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stateTransitionReason)
        stateTransitionReason = stateTransitionReasonDecoded
        let destinationConfigDecoded = try containerValues.decodeIfPresent(DestinationConfig.self, forKey: .destinationConfig)
        destinationConfig = destinationConfigDecoded
        let topicsContainer = try containerValues.decodeIfPresent([String].self, forKey: .topics)
        var topicsDecoded0:[String]? = nil
        if let topicsContainer = topicsContainer {
            topicsDecoded0 = [String]()
            for string0 in topicsContainer {
                topicsDecoded0?.append(string0)
            }
        }
        topics = topicsDecoded0
        let queuesContainer = try containerValues.decodeIfPresent([String].self, forKey: .queues)
        var queuesDecoded0:[String]? = nil
        if let queuesContainer = queuesContainer {
            queuesDecoded0 = [String]()
            for string0 in queuesContainer {
                queuesDecoded0?.append(string0)
            }
        }
        queues = queuesDecoded0
        let sourceAccessConfigurationsContainer = try containerValues.decodeIfPresent([SourceAccessConfiguration].self, forKey: .sourceAccessConfigurations)
        var sourceAccessConfigurationsDecoded0:[SourceAccessConfiguration]? = nil
        if let sourceAccessConfigurationsContainer = sourceAccessConfigurationsContainer {
            sourceAccessConfigurationsDecoded0 = [SourceAccessConfiguration]()
            for structure0 in sourceAccessConfigurationsContainer {
                sourceAccessConfigurationsDecoded0?.append(structure0)
            }
        }
        sourceAccessConfigurations = sourceAccessConfigurationsDecoded0
        let maximumRecordAgeInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumRecordAgeInSeconds)
        maximumRecordAgeInSeconds = maximumRecordAgeInSecondsDecoded
        let bisectBatchOnFunctionErrorDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .bisectBatchOnFunctionError)
        bisectBatchOnFunctionError = bisectBatchOnFunctionErrorDecoded
        let maximumRetryAttemptsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumRetryAttempts)
        maximumRetryAttempts = maximumRetryAttemptsDecoded
    }
}
