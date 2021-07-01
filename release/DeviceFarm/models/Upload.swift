// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An app or a set of one or more tests to upload or that have been
///             uploaded.</p>
public struct Upload: Equatable {
    /// <p>The upload's ARN.</p>
    public let arn: String?
    /// <p>The upload's category. Allowed values include:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>CURATED: An upload managed by AWS Device Farm.</p>
    ///             </li>
    ///             <li>
    ///                 <p>PRIVATE: An upload managed by the AWS Device Farm customer.</p>
    ///             </li>
    ///          </ul>
    public let category: UploadCategory?
    /// <p>The upload's content type (for example, <code>application/octet-stream</code>).</p>
    public let contentType: String?
    /// <p>When the upload was created.</p>
    public let created: Date?
    /// <p>A message about the upload's result.</p>
    public let message: String?
    /// <p>The upload's metadata. For example, for Android, this contains information that is
    ///             parsed from the manifest and is displayed in the AWS Device Farm console after the
    ///             associated app is uploaded.</p>
    public let metadata: String?
    /// <p>The upload's file name.</p>
    public let name: String?
    /// <p>The upload's status.</p>
    ///         <p>Must be one of the following values:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>FAILED</p>
    ///             </li>
    ///             <li>
    ///                 <p>INITIALIZED</p>
    ///             </li>
    ///             <li>
    ///                 <p>PROCESSING</p>
    ///             </li>
    ///             <li>
    ///                 <p>SUCCEEDED</p>
    ///             </li>
    ///          </ul>
    public let status: UploadStatus?
    /// <p>The upload's type.</p>
    ///         <p>Must be one of the following values:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>ANDROID_APP</p>
    ///             </li>
    ///             <li>
    ///                 <p>IOS_APP</p>
    ///             </li>
    ///             <li>
    ///                 <p>WEB_APP</p>
    ///             </li>
    ///             <li>
    ///                 <p>EXTERNAL_DATA</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_PYTHON_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_NODE_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_RUBY_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>CALABASH_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>INSTRUMENTATION_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>UIAUTOMATION_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>UIAUTOMATOR_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>XCTEST_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>XCTEST_UI_TEST_PACKAGE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_PYTHON_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_NODE_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_RUBY_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_NODE_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>INSTRUMENTATION_TEST_SPEC</p>
    ///             </li>
    ///             <li>
    ///                 <p>XCTEST_UI_TEST_SPEC</p>
    ///             </li>
    ///          </ul>
    public let type: UploadType?
    /// <p>The presigned Amazon S3 URL that was used to store a file using a PUT request.</p>
    public let url: String?

    public init (
        arn: String? = nil,
        category: UploadCategory? = nil,
        contentType: String? = nil,
        created: Date? = nil,
        message: String? = nil,
        metadata: String? = nil,
        name: String? = nil,
        status: UploadStatus? = nil,
        type: UploadType? = nil,
        url: String? = nil
    )
    {
        self.arn = arn
        self.category = category
        self.contentType = contentType
        self.created = created
        self.message = message
        self.metadata = metadata
        self.name = name
        self.status = status
        self.type = type
        self.url = url
    }
}

extension Upload: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Upload(arn: \(String(describing: arn)), category: \(String(describing: category)), contentType: \(String(describing: contentType)), created: \(String(describing: created)), message: \(String(describing: message)), metadata: \(String(describing: metadata)), name: \(String(describing: name)), status: \(String(describing: status)), type: \(String(describing: type)), url: \(String(describing: url)))"}
}