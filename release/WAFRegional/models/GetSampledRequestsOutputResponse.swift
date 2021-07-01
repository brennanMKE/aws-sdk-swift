// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSampledRequestsOutputResponse: Equatable {
    /// <p>The total number of requests from which <code>GetSampledRequests</code> got a sample of <code>MaxItems</code> requests.
    /// 			If <code>PopulationSize</code> is less than <code>MaxItems</code>, the sample includes every request that your AWS resource
    /// 			received during the specified time range.</p>
    public let populationSize: Int
    /// <p>A complex type that contains detailed information about each of the requests in the sample.</p>
    public let sampledRequests: [SampledHTTPRequest]?
    /// <p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. However,
    /// 			if your AWS resource received more than 5,000 requests during the time range that you specified in the request,
    /// 			<code>GetSampledRequests</code> returns the time range for the first 5,000 requests. Times are in Coordinated Universal Time (UTC) format.</p>
    public let timeWindow: TimeWindow?

    public init (
        populationSize: Int = 0,
        sampledRequests: [SampledHTTPRequest]? = nil,
        timeWindow: TimeWindow? = nil
    )
    {
        self.populationSize = populationSize
        self.sampledRequests = sampledRequests
        self.timeWindow = timeWindow
    }
}

extension GetSampledRequestsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSampledRequestsOutputResponse(populationSize: \(String(describing: populationSize)), sampledRequests: \(String(describing: sampledRequests)), timeWindow: \(String(describing: timeWindow)))"}
}