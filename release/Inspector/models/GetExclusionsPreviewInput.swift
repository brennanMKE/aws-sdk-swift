// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetExclusionsPreviewInput: Equatable {
    /// <p>The ARN that specifies the assessment template for which the exclusions preview was
    ///          requested.</p>
    public let assessmentTemplateArn: String?
    /// <p>The locale into which you want to translate the exclusion's title, description, and
    ///          recommendation.</p>
    public let locale: Locale?
    /// <p>You can use this parameter to indicate the maximum number of items you want in the
    ///          response. The default value is 100. The maximum value is 500.</p>
    public let maxResults: Int?
    /// <p>You can use this parameter when paginating results. Set the value of this parameter
    ///          to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to
    ///          the action fill nextToken in the request with the value of nextToken from the previous
    ///          response to continue listing data.</p>
    public let nextToken: String?
    /// <p>The unique identifier associated of the exclusions preview.</p>
    public let previewToken: String?

    public init (
        assessmentTemplateArn: String? = nil,
        locale: Locale? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        previewToken: String? = nil
    )
    {
        self.assessmentTemplateArn = assessmentTemplateArn
        self.locale = locale
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.previewToken = previewToken
    }
}

extension GetExclusionsPreviewInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetExclusionsPreviewInput(assessmentTemplateArn: \(String(describing: assessmentTemplateArn)), locale: \(String(describing: locale)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), previewToken: \(String(describing: previewToken)))"}
}