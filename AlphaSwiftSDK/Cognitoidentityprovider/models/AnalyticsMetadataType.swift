// Code generated by smithy-swift-codegen. DO NOT EDIT!



/**
 <p>An Amazon Pinpoint analytics endpoint.</p>
         <p>An endpoint uniquely identifies a mobile device, email address, or phone number that
             can receive messages from Amazon Pinpoint analytics.</p>
         <note>
             <p>Cognito User Pools only supports sending events to Amazon Pinpoint projects in the US East (N. Virginia) us-east-1 Region, regardless of the region in which the user pool resides.</p>
         </note>
 */
public struct AnalyticsMetadataType: Equatable {
    /// <p>The endpoint ID.</p>
    public let analyticsEndpointId: String?

    public init (
        analyticsEndpointId: String? = nil
    )
    {
        self.analyticsEndpointId = analyticsEndpointId
    }
}
