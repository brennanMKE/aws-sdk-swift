// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetMetricWidgetImageOutputResponse: Equatable {
    /// <p>The image of the graph, in the output format specified. The output is base64-encoded.</p>
    public let metricWidgetImage: Data?

    public init (
        metricWidgetImage: Data? = nil
    )
    {
        self.metricWidgetImage = metricWidgetImage
    }
}

extension GetMetricWidgetImageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetMetricWidgetImageOutputResponse(metricWidgetImage: \(String(describing: metricWidgetImage)))"}
}