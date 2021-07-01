// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
public struct DescribeLoaOutputResponse: Equatable {
    /// <p>The binary contents of the LOA-CFA document.</p>
    public let loaContent: Data?
    /// <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    public let loaContentType: LoaContentType?

    public init (
        loaContent: Data? = nil,
        loaContentType: LoaContentType? = nil
    )
    {
        self.loaContent = loaContent
        self.loaContentType = loaContentType
    }
}

extension DescribeLoaOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeLoaOutputResponse(loaContent: \(String(describing: loaContent)), loaContentType: \(String(describing: loaContentType)))"}
}