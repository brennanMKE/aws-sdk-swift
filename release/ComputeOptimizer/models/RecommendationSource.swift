// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the source of a recommendation, such as an Amazon EC2 instance or Auto Scaling
///             group.</p>
public struct RecommendationSource: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the recommendation source.</p>
    public let recommendationSourceArn: String?
    /// <p>The resource type of the recommendation source.</p>
    public let recommendationSourceType: RecommendationSourceType?

    public init (
        recommendationSourceArn: String? = nil,
        recommendationSourceType: RecommendationSourceType? = nil
    )
    {
        self.recommendationSourceArn = recommendationSourceArn
        self.recommendationSourceType = recommendationSourceType
    }
}

extension RecommendationSource: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RecommendationSource(recommendationSourceArn: \(String(describing: recommendationSourceArn)), recommendationSourceType: \(String(describing: recommendationSourceType)))"}
}