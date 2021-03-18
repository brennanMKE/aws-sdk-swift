// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AdminListUserAuthEventsOutput: Equatable {
    /**
     <p>The response object. It includes the <code>EventID</code>, <code>EventType</code>,
                     <code>CreationDate</code>, <code>EventRisk</code>, and
                 <code>EventResponse</code>.</p>
     */
    public let authEvents: [AuthEventType]?
    /// <p>A pagination token.</p>
    public let nextToken: String?

    public init (
        authEvents: [AuthEventType]? = nil,
        nextToken: String? = nil
    )
    {
        self.authEvents = authEvents
        self.nextToken = nextToken
    }
}
