// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

/**
 <p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a>
       for details.</p>
 */
public struct EventSourceMappingConfiguration: Equatable {
    /// <p>The maximum number of items to retrieve in a single batch.</p>
    public let batchSize: Int?
    /// <p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    public let bisectBatchOnFunctionError: Bool?
    /// <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    public let destinationConfig: DestinationConfig?
    /// <p>The Amazon Resource Name (ARN) of the event source.</p>
    public let eventSourceArn: String?
    /// <p>The ARN of the Lambda function.</p>
    public let functionArn: String?
    /// <p>The date that the event source mapping was last updated, or its state changed.</p>
    public let lastModified: Date?
    /// <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
    public let lastProcessingResult: String?
    /// <p>(Streams) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>
    public let maximumBatchingWindowInSeconds: Int?
    /// <p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    public let maximumRecordAgeInSeconds: Int?
    /// <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    public let maximumRetryAttempts: Int?
    /// <p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>
    public let parallelizationFactor: Int?
    /**
     <p>
           (MQ) The name of the Amazon MQ broker destination queue to consume.
         </p>
     */
    public let queues: [String]?
    /**
     <p>
           (MQ) The Secrets Manager secret that stores your broker credentials. To store your secret, use the following format:
           <code>	  {
             "username": "your username",
             "password": "your password"
             }</code>
              </p>

              <p>To reference the secret, use the following format:
           <code>[
             {
             "Type": "BASIC_AUTH",
             "URI": "secretARN"
             }
             ]</code>
              </p>
              <p>The value of <code>Type</code> is always <code>BASIC_AUTH</code>. To encrypt the secret, you can use customer or service managed keys. When using a customer managed KMS key, the Lambda execution role requires <code>kms:Decrypt</code> permissions.</p>
     */
    public let sourceAccessConfigurations: [SourceAccessConfiguration]?
    /**
     <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
           sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
     */
    public let startingPosition: EventSourcePosition?
    /**
     <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
           reading.</p>
     */
    public let startingPositionTimestamp: Date?
    /**
     <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
           <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
           <code>Updating</code>, or <code>Deleting</code>.</p>
     */
    public let state: String?
    /**
     <p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
           service.</p>
     */
    public let stateTransitionReason: String?
    /**
     <p>
           (MSK) The name of the Kafka topic to consume.
         </p>
     */
    public let topics: [String]?
    /// <p>The identifier of the event source mapping.</p>
    public let uUID: String?

    public init (
        batchSize: Int? = nil,
        bisectBatchOnFunctionError: Bool? = nil,
        destinationConfig: DestinationConfig? = nil,
        eventSourceArn: String? = nil,
        functionArn: String? = nil,
        lastModified: Date? = nil,
        lastProcessingResult: String? = nil,
        maximumBatchingWindowInSeconds: Int? = nil,
        maximumRecordAgeInSeconds: Int? = nil,
        maximumRetryAttempts: Int? = nil,
        parallelizationFactor: Int? = nil,
        queues: [String]? = nil,
        sourceAccessConfigurations: [SourceAccessConfiguration]? = nil,
        startingPosition: EventSourcePosition? = nil,
        startingPositionTimestamp: Date? = nil,
        state: String? = nil,
        stateTransitionReason: String? = nil,
        topics: [String]? = nil,
        uUID: String? = nil
    )
    {
        self.batchSize = batchSize
        self.bisectBatchOnFunctionError = bisectBatchOnFunctionError
        self.destinationConfig = destinationConfig
        self.eventSourceArn = eventSourceArn
        self.functionArn = functionArn
        self.lastModified = lastModified
        self.lastProcessingResult = lastProcessingResult
        self.maximumBatchingWindowInSeconds = maximumBatchingWindowInSeconds
        self.maximumRecordAgeInSeconds = maximumRecordAgeInSeconds
        self.maximumRetryAttempts = maximumRetryAttempts
        self.parallelizationFactor = parallelizationFactor
        self.queues = queues
        self.sourceAccessConfigurations = sourceAccessConfigurations
        self.startingPosition = startingPosition
        self.startingPositionTimestamp = startingPositionTimestamp
        self.state = state
        self.stateTransitionReason = stateTransitionReason
        self.topics = topics
        self.uUID = uUID
    }
}
