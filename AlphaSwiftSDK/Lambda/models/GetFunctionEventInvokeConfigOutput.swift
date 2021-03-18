// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

public struct GetFunctionEventInvokeConfigOutput: Equatable {
    /**
     <p>A destination for events after they have been sent to a function for processing.</p>
              <p class="title">
                 <b>Destinations</b>
              </p>
              <ul>
                 <li>
                    <p>
                       <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
                 </li>
                 <li>
                    <p>
                       <b>Queue</b> - The ARN of an SQS queue.</p>
                 </li>
                 <li>
                    <p>
                       <b>Topic</b> - The ARN of an SNS topic.</p>
                 </li>
                 <li>
                    <p>
                       <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
                 </li>
              </ul>
     */
    public let destinationConfig: DestinationConfig?
    /// <p>The Amazon Resource Name (ARN) of the function.</p>
    public let functionArn: String?
    /// <p>The date and time that the configuration was last updated.</p>
    public let lastModified: Date?
    /// <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    public let maximumEventAgeInSeconds: Int?
    /// <p>The maximum number of times to retry when the function returns an error.</p>
    public let maximumRetryAttempts: Int?

    public init (
        destinationConfig: DestinationConfig? = nil,
        functionArn: String? = nil,
        lastModified: Date? = nil,
        maximumEventAgeInSeconds: Int? = nil,
        maximumRetryAttempts: Int? = nil
    )
    {
        self.destinationConfig = destinationConfig
        self.functionArn = functionArn
        self.lastModified = lastModified
        self.maximumEventAgeInSeconds = maximumEventAgeInSeconds
        self.maximumRetryAttempts = maximumRetryAttempts
    }
}
