// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a collection of <a>DomainName</a> resources.</p>
///       <div class="seeAlso">
///         <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a>
///       </div>
public struct GetDomainNamesOutputResponse: Equatable {
    /// <p>The current page of elements from this collection.</p>
    public let items: [DomainName]?
    /// <p>The current pagination position in the paged result set.</p>
    public let position: String?

    public init (
        items: [DomainName]? = nil,
        position: String? = nil
    )
    {
        self.items = items
        self.position = position
    }
}

extension GetDomainNamesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDomainNamesOutputResponse(items: \(String(describing: items)), position: \(String(describing: position)))"}
}