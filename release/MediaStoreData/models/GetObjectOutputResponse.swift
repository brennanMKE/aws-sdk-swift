// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetObjectOutputResponse: Equatable {
    /// <p>The bytes of the object. </p>
    public let body: Data?
    /// <p>An optional <code>CacheControl</code> header that allows the caller to control the
    ///          object's cache behavior. Headers can be passed in as specified in the HTTP spec at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    ///          <p>Headers with a custom user-defined value are also accepted.</p>
    public let cacheControl: String?
    /// <p>The length of the object in bytes.</p>
    public let contentLength: Int?
    /// <p>The range of bytes to retrieve.</p>
    public let contentRange: String?
    /// <p>The content type of the object.</p>
    public let contentType: String?
    /// <p>The ETag that represents a unique instance of the object.</p>
    public let eTag: String?
    /// <p>The date and time that the object was last modified.</p>
    public let lastModified: Date?
    /// <p>The HTML status code of the request. Status codes ranging from 200 to 299 indicate
    ///          success. All other status codes indicate the type of error that occurred.</p>
    public let statusCode: Int

    public init (
        body: Data? = nil,
        cacheControl: String? = nil,
        contentLength: Int? = nil,
        contentRange: String? = nil,
        contentType: String? = nil,
        eTag: String? = nil,
        lastModified: Date? = nil,
        statusCode: Int = 0
    )
    {
        self.body = body
        self.cacheControl = cacheControl
        self.contentLength = contentLength
        self.contentRange = contentRange
        self.contentType = contentType
        self.eTag = eTag
        self.lastModified = lastModified
        self.statusCode = statusCode
    }
}

extension GetObjectOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetObjectOutputResponse(body: \(String(describing: body)), cacheControl: \(String(describing: cacheControl)), contentLength: \(String(describing: contentLength)), contentRange: \(String(describing: contentRange)), contentType: \(String(describing: contentType)), eTag: \(String(describing: eTag)), lastModified: \(String(describing: lastModified)), statusCode: \(String(describing: statusCode)))"}
}