// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartBulkDeploymentInput: Equatable {
    /// A client token used to correlate requests and responses.
    public let amznClientToken: String?
    /// The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file.
    public let executionRoleArn: String?
    /// The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.
    public let inputFileUri: String?
    /// Tag(s) to add to the new resource.
    public let tags: [String:String]?

    public init (
        amznClientToken: String? = nil,
        executionRoleArn: String? = nil,
        inputFileUri: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.amznClientToken = amznClientToken
        self.executionRoleArn = executionRoleArn
        self.inputFileUri = inputFileUri
        self.tags = tags
    }
}

extension StartBulkDeploymentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartBulkDeploymentInput(amznClientToken: \(String(describing: amznClientToken)), executionRoleArn: \(String(describing: executionRoleArn)), inputFileUri: \(String(describing: inputFileUri)), tags: \(String(describing: tags)))"}
}