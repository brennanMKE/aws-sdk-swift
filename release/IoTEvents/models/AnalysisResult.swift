// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the result of the analysis.</p>
public struct AnalysisResult: Equatable {
    /// <p>The severity level of the analysis result. Based on the severity level, analysis results
    ///       fall into three general categories:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>INFO</code> - An information result tells you about a significant field in your
    ///           detector model. This type of result usually doesn't require immediate action.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>WARNING</code> - A warning result draws special attention to fields that might cause issues for your detector model.
    ///           We recommend that you review warnings and take necessary actions
    ///           before you use your detector model in production environments. Otherwise, the detector
    ///           model might not work as expected.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ERROR</code> - An error result notifies you about a problem found in your
    ///           detector model. You must fix all errors before you can publish your detector model.</p>
    ///             </li>
    ///          </ul>
    public let level: AnalysisResultLevel?
    /// <p>Contains one or more locations that you can use to locate the fields in your detector
    ///       model that the analysis result references.</p>
    public let locations: [AnalysisResultLocation]?
    /// <p>Contains additional information about the analysis result.</p>
    public let message: String?
    /// <p>The type of the analysis result. Analyses fall into the following types based on the
    ///       validators used to generate the analysis result:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>supported-actions</code> - You must specify AWS IoT Events supported actions that work
    ///           with other AWS services in a supported AWS Region.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>service-limits</code> - Resources or API operations can't exceed service
    ///           quotas (also known as limits). Update your detector model or request a quota
    ///           increase.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>structure</code> - The detector model must follow a structure that AWS IoT Events
    ///           supports. </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>expression-syntax</code> - Your expression must follow the required
    ///           syntax.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>data-type</code> - Data types referenced in the detector model must be
    ///           compatible.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>referenced-data</code> - You must define the data referenced in your detector
    ///           model before you can use the data.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>referenced-resource</code> - Resources that the detector model uses must be
    ///           available.</p>
    ///             </li>
    ///          </ul>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html">Running detector model
    ///         analyses</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    public let type: String?

    public init (
        level: AnalysisResultLevel? = nil,
        locations: [AnalysisResultLocation]? = nil,
        message: String? = nil,
        type: String? = nil
    )
    {
        self.level = level
        self.locations = locations
        self.message = message
        self.type = type
    }
}

extension AnalysisResult: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AnalysisResult(level: \(String(describing: level)), locations: \(String(describing: locations)), message: \(String(describing: message)), type: \(String(describing: type)))"}
}