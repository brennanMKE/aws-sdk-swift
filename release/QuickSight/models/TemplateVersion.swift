// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A version of a template.</p>
public struct TemplateVersion: Equatable {
    /// <p>The time that this template version was created.</p>
    public let createdTime: Date?
    /// <p>Schema of the dataset identified by the placeholder. Any dashboard created from this
    ///             template should be bound to new datasets matching the same schema described through this
    ///             API operation.</p>
    public let dataSetConfigurations: [DataSetConfiguration]?
    /// <p>The description of the template.</p>
    public let description: String?
    /// <p>Errors associated with this template version.</p>
    public let errors: [TemplateError]?
    /// <p>A list of the associated sheets with the unique identifier and name of each sheet.</p>
    public let sheets: [Sheet]?
    /// <p>The Amazon Resource Name (ARN) of an analysis or template that was used to create this
    ///             template.</p>
    public let sourceEntityArn: String?
    /// <p>The HTTP status of the request.</p>
    public let status: ResourceStatus?
    /// <p>The ARN of the theme associated with this version of the template.</p>
    public let themeArn: String?
    /// <p>The version number of the template version.</p>
    public let versionNumber: Int?

    public init (
        createdTime: Date? = nil,
        dataSetConfigurations: [DataSetConfiguration]? = nil,
        description: String? = nil,
        errors: [TemplateError]? = nil,
        sheets: [Sheet]? = nil,
        sourceEntityArn: String? = nil,
        status: ResourceStatus? = nil,
        themeArn: String? = nil,
        versionNumber: Int? = nil
    )
    {
        self.createdTime = createdTime
        self.dataSetConfigurations = dataSetConfigurations
        self.description = description
        self.errors = errors
        self.sheets = sheets
        self.sourceEntityArn = sourceEntityArn
        self.status = status
        self.themeArn = themeArn
        self.versionNumber = versionNumber
    }
}

extension TemplateVersion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TemplateVersion(createdTime: \(String(describing: createdTime)), dataSetConfigurations: \(String(describing: dataSetConfigurations)), description: \(String(describing: description)), errors: \(String(describing: errors)), sheets: \(String(describing: sheets)), sourceEntityArn: \(String(describing: sourceEntityArn)), status: \(String(describing: status)), themeArn: \(String(describing: themeArn)), versionNumber: \(String(describing: versionNumber)))"}
}