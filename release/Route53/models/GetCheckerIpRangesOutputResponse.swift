// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that contains the <code>CheckerIpRanges</code> element.</p>
public struct GetCheckerIpRangesOutputResponse: Equatable {
    /// <p>A complex type that contains sorted list of IP ranges in CIDR format for Amazon Route 53 health
    /// 			checkers.</p>
    public let checkerIpRanges: [String]?

    public init (
        checkerIpRanges: [String]? = nil
    )
    {
        self.checkerIpRanges = checkerIpRanges
    }
}

extension GetCheckerIpRangesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCheckerIpRangesOutputResponse(checkerIpRanges: \(String(describing: checkerIpRanges)))"}
}