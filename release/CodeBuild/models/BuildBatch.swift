// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains information about a batch build.</p>
public struct BuildBatch: Equatable {
    /// <p>The ARN of the batch build.</p>
    public let arn: String?
    /// <p>A <code>BuildArtifacts</code> object the defines the build artifacts for this batch build.</p>
    public let artifacts: BuildArtifacts?
    /// <p>Contains configuration information about a batch build project.</p>
    public let buildBatchConfig: ProjectBuildBatchConfig?
    /// <p>The number of the batch build. For each project, the <code>buildBatchNumber</code> of its
    ///             first batch build is <code>1</code>. The <code>buildBatchNumber</code> of each subsequent
    ///             batch build is incremented by <code>1</code>. If a batch build is deleted, the
    ///                 <code>buildBatchNumber</code> of other batch builds does not change.</p>
    public let buildBatchNumber: Int?
    /// <p>The status of the batch build.</p>
    public let buildBatchStatus: StatusType?
    /// <p>An array of <code>BuildGroup</code> objects that define the build groups for the
    ///             batch build.</p>
    public let buildGroups: [BuildGroup]?
    /// <p>Specifies the maximum amount of time, in minutes, that the build in a batch must be
    ///             completed in.</p>
    public let buildTimeoutInMinutes: Int?
    /// <p>Information about the cache for the build project.</p>
    public let cache: ProjectCache?
    /// <p>Indicates if the batch build is complete.</p>
    public let complete: Bool
    /// <p>The current phase of the batch build.</p>
    public let currentPhase: String?
    /// <p>Specifies if session debugging is enabled for this batch build. For more information, see
    ///   <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    public let debugSessionEnabled: Bool?
    /// <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the batch build output
    ///             artifacts.</p>
    ///         <note>
    ///             <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    ///                 service role has permission to that key. </p>
    ///         </note>
    ///         <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    ///             the format <code>alias/<alias-name></code>).</p>
    public let encryptionKey: String?
    /// <p>The date and time that the batch build ended.</p>
    public let endTime: Date?
    /// <p>Information about the build environment of the build project.</p>
    public let environment: ProjectEnvironment?
    /// <p>An array of <code>ProjectFileSystemLocation</code> objects for the batch build
    ///             project. A <code>ProjectFileSystemLocation</code> object specifies the
    ///                 <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    ///                 <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon
    ///             Elastic File System. </p>
    public let fileSystemLocations: [ProjectFileSystemLocation]?
    /// <p>The identifier of the batch build.</p>
    public let id: String?
    /// <p>The entity that started the batch build. Valid values include:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>If AWS CodePipeline started the build, the pipeline's name (for example,
    ///                         <code>codepipeline/my-demo-pipeline</code>).</p>
    ///             </li>
    ///             <li>
    ///                 <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name.</p>
    ///             </li>
    ///             <li>
    ///                 <p>If the Jenkins plugin for AWS CodeBuild started the build, the string
    ///                         <code>CodeBuild-Jenkins-Plugin</code>.</p>
    ///             </li>
    ///          </ul>
    public let initiator: String?
    /// <p> Information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a
    ///             specified S3 bucket, or both. </p>
    public let logConfig: LogsConfig?
    /// <p>An array of <code>BuildBatchPhase</code> objects the specify the phases of the
    ///             batch build.</p>
    public let phases: [BuildBatchPhase]?
    /// <p>The name of the batch build project.</p>
    public let projectName: String?
    /// <p>Specifies the amount of time, in minutes, that the batch build is allowed to be queued
    ///             before it times out.</p>
    public let queuedTimeoutInMinutes: Int?
    /// <p>The identifier of the resolved version of this batch build's source code.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.</p>
    ///             </li>
    ///             <li>
    ///                 <p>For AWS CodePipeline, the source revision provided by AWS CodePipeline.</p>
    ///             </li>
    ///             <li>
    ///                 <p>For Amazon S3, this does not apply.</p>
    ///             </li>
    ///          </ul>
    public let resolvedSourceVersion: String?
    /// <p>An array of <code>BuildArtifacts</code> objects the define the build artifacts
    ///             for this batch build.</p>
    public let secondaryArtifacts: [BuildArtifacts]?
    /// <p>An array of <code>ProjectSourceVersion</code> objects. Each
    ///                 <code>ProjectSourceVersion</code> must be one of: </p>
    ///          <ul>
    ///             <li>
    ///                <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
    ///             </li>
    ///             <li>
    ///                <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    ///           corresponds to the version of the source code you want to build. If a pull
    ///           request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    ///           (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    ///           HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    ///           used.</p>
    ///             </li>
    ///             <li>
    ///                <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    ///           version of the source code you want to build. If a branch name is specified, the
    ///           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    ///           commit ID is used.</p>
    ///             </li>
    ///             <li>
    ///                <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    ///           file to use.</p>
    ///             </li>
    ///          </ul>
    public let secondarySourceVersions: [ProjectSourceVersion]?
    /// <p>An array of <code>ProjectSource</code> objects that define the sources for the batch
    ///             build.</p>
    public let secondarySources: [ProjectSource]?
    /// <p>The name of a service role used for builds in the batch.</p>
    public let serviceRole: String?
    /// <p>Information about the build input source code for the build project.</p>
    public let source: ProjectSource?
    /// <p>The identifier of the version of the source code to be built.</p>
    public let sourceVersion: String?
    /// <p>The date and time that the batch build started.</p>
    public let startTime: Date?
    /// <p>Information about the VPC configuration that AWS CodeBuild accesses.</p>
    public let vpcConfig: VpcConfig?

    public init (
        arn: String? = nil,
        artifacts: BuildArtifacts? = nil,
        buildBatchConfig: ProjectBuildBatchConfig? = nil,
        buildBatchNumber: Int? = nil,
        buildBatchStatus: StatusType? = nil,
        buildGroups: [BuildGroup]? = nil,
        buildTimeoutInMinutes: Int? = nil,
        cache: ProjectCache? = nil,
        complete: Bool = false,
        currentPhase: String? = nil,
        debugSessionEnabled: Bool? = nil,
        encryptionKey: String? = nil,
        endTime: Date? = nil,
        environment: ProjectEnvironment? = nil,
        fileSystemLocations: [ProjectFileSystemLocation]? = nil,
        id: String? = nil,
        initiator: String? = nil,
        logConfig: LogsConfig? = nil,
        phases: [BuildBatchPhase]? = nil,
        projectName: String? = nil,
        queuedTimeoutInMinutes: Int? = nil,
        resolvedSourceVersion: String? = nil,
        secondaryArtifacts: [BuildArtifacts]? = nil,
        secondarySourceVersions: [ProjectSourceVersion]? = nil,
        secondarySources: [ProjectSource]? = nil,
        serviceRole: String? = nil,
        source: ProjectSource? = nil,
        sourceVersion: String? = nil,
        startTime: Date? = nil,
        vpcConfig: VpcConfig? = nil
    )
    {
        self.arn = arn
        self.artifacts = artifacts
        self.buildBatchConfig = buildBatchConfig
        self.buildBatchNumber = buildBatchNumber
        self.buildBatchStatus = buildBatchStatus
        self.buildGroups = buildGroups
        self.buildTimeoutInMinutes = buildTimeoutInMinutes
        self.cache = cache
        self.complete = complete
        self.currentPhase = currentPhase
        self.debugSessionEnabled = debugSessionEnabled
        self.encryptionKey = encryptionKey
        self.endTime = endTime
        self.environment = environment
        self.fileSystemLocations = fileSystemLocations
        self.id = id
        self.initiator = initiator
        self.logConfig = logConfig
        self.phases = phases
        self.projectName = projectName
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.resolvedSourceVersion = resolvedSourceVersion
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.startTime = startTime
        self.vpcConfig = vpcConfig
    }
}

extension BuildBatch: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BuildBatch(arn: \(String(describing: arn)), artifacts: \(String(describing: artifacts)), buildBatchConfig: \(String(describing: buildBatchConfig)), buildBatchNumber: \(String(describing: buildBatchNumber)), buildBatchStatus: \(String(describing: buildBatchStatus)), buildGroups: \(String(describing: buildGroups)), buildTimeoutInMinutes: \(String(describing: buildTimeoutInMinutes)), cache: \(String(describing: cache)), complete: \(String(describing: complete)), currentPhase: \(String(describing: currentPhase)), debugSessionEnabled: \(String(describing: debugSessionEnabled)), encryptionKey: \(String(describing: encryptionKey)), endTime: \(String(describing: endTime)), environment: \(String(describing: environment)), fileSystemLocations: \(String(describing: fileSystemLocations)), id: \(String(describing: id)), initiator: \(String(describing: initiator)), logConfig: \(String(describing: logConfig)), phases: \(String(describing: phases)), projectName: \(String(describing: projectName)), queuedTimeoutInMinutes: \(String(describing: queuedTimeoutInMinutes)), resolvedSourceVersion: \(String(describing: resolvedSourceVersion)), secondaryArtifacts: \(String(describing: secondaryArtifacts)), secondarySourceVersions: \(String(describing: secondarySourceVersions)), secondarySources: \(String(describing: secondarySources)), serviceRole: \(String(describing: serviceRole)), source: \(String(describing: source)), sourceVersion: \(String(describing: sourceVersion)), startTime: \(String(describing: startTime)), vpcConfig: \(String(describing: vpcConfig)))"}
}