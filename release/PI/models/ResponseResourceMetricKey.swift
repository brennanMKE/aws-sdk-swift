// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object describing a Performance Insights metric and one or more dimensions for that metric.</p>
public struct ResponseResourceMetricKey: Equatable {
    /// <p>The valid dimensions for the metric.</p>
    public let dimensions: [String:String]?
    /// <p>The name of a Performance Insights metric to be measured.</p>
    ///          <p>Valid values for <code>Metric</code> are:</p>
    ///
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>db.load.avg</code> - a scaled representation of the number of active sessions
    ///           for the database engine.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>db.sampledload.avg</code> - the raw number of active sessions for the
    ///           database engine.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> and <code>db.sampledload.avg</code>
    ///           are the same value. If the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code>
    ///           showing the scaled values, <code>db.sampledload.avg</code> showing the raw values, and <code>db.sampledload.avg</code> less than <code>db.load.avg</code>.
    ///           For most use cases, you can query <code>db.load.avg</code> only. </p>
    public let metric: String?

    public init (
        dimensions: [String:String]? = nil,
        metric: String? = nil
    )
    {
        self.dimensions = dimensions
        self.metric = metric
    }
}

extension ResponseResourceMetricKey: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResponseResourceMetricKey(dimensions: \(String(describing: dimensions)), metric: \(String(describing: metric)))"}
}