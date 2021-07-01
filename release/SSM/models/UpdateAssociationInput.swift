// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateAssociationInput: Equatable {
    /// <p>By default, when you update an association, the system runs it immediately after it is
    ///    updated and then according to the schedule you specified. Specify this option if you don't want
    ///    an association to run immediately after you update it. This parameter is not supported for rate
    ///    expressions.</p>
    ///          <p>Also, if you specified this option when you created the association, you can reset it. To do
    ///    so, specify the <code>no-apply-only-at-cron-interval</code> parameter when you update the
    ///    association from the command line. This parameter forces the association to run immediately after
    ///    updating it and according to the interval specified.</p>
    public let applyOnlyAtCronInterval: Bool
    /// <p>The ID of the association you want to update. </p>
    public let associationId: String?
    /// <p>The name of the association that you want to update.</p>
    public let associationName: String?
    /// <p>This parameter is provided for concurrency control purposes. You must specify the latest
    ///    association version in the service. If you want to ensure that this request succeeds, either
    ///    specify <code>$LATEST</code>, or omit this parameter.</p>
    public let associationVersion: String?
    /// <p>Specify the target for the association. This target is required for associations that use an
    ///    Automation document and target resources by using rate controls.</p>
    public let automationTargetParameterName: String?
    /// <p>The names or Amazon Resource Names (ARNs) of the Systems Manager Change Calendar type
    ///    documents you want to gate your associations under. The associations only run when that Change
    ///    Calendar is open. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">AWS Systems Manager Change
    ///     Calendar</a>.</p>
    public let calendarNames: [String]?
    /// <p>The severity level to assign to the association.</p>
    public let complianceSeverity: AssociationComplianceSeverity?
    /// <p>The document version you want update for the association. </p>
    public let documentVersion: String?
    /// <p>The maximum number of targets allowed to run the association at the same time. You can
    ///    specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    ///    value is 100%, which means all targets run the association at the same time.</p>
    ///          <p>If a new instance starts and attempts to run an association while Systems Manager is running
    ///    MaxConcurrency associations, the association is allowed to run. During the next association
    ///    interval, the new instance will process its association within the limit specified for
    ///    MaxConcurrency.</p>
    public let maxConcurrency: String?
    /// <p>The number of errors that are allowed before the system stops sending requests to run the
    ///    association on additional targets. You can specify either an absolute number of errors, for
    ///    example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    ///    the system stops sending requests when the fourth error is received. If you specify 0, then the
    ///    system stops sending requests after the first error is returned. If you run an association on 50
    ///    instances and set MaxError to 10%, then the system stops sending the request when the sixth error
    ///    is received.</p>
    ///          <p>Executions that are already running an association when MaxErrors is reached are allowed to
    ///    complete, but some of these executions may fail as well. If you need to ensure that there won't
    ///    be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one
    ///    at a time.</p>
    public let maxErrors: String?
    /// <p>The name of the SSM document that contains the configuration information for the instance.
    ///    You can specify Command or Automation documents.</p>
    ///          <p>You can specify AWS-predefined documents, documents you created, or a document that is
    ///    shared with you from another account.</p>
    ///          <p>For SSM documents that are shared with you from other AWS accounts, you must specify the
    ///    complete SSM document ARN, in the following format:</p>
    ///          <p>
    ///             <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    ///             </code>
    ///          </p>
    ///          <p>For example:</p>
    ///          <p>
    ///             <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    ///          </p>
    ///          <p>For AWS-predefined documents and SSM documents you created in your account, you only need to
    ///    specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    ///     <code>My-Document</code>.</p>
    public let name: String?
    /// <p>An S3 bucket where you want to store the results of this request.</p>
    public let outputLocation: InstanceAssociationOutputLocation?
    /// <p>The parameters you want to update for the association. If you create a parameter using
    ///    Parameter Store, you can reference the parameter using {{ssm:parameter-name}}</p>
    public let parameters: [String:[String]]?
    /// <p>The cron expression used to schedule the association that you want to update.</p>
    public let scheduleExpression: String?
    /// <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    ///     <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    ///    execution to determine the compliance status. If the association execution runs successfully,
    ///    then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    ///    successfully, the association is <code>NON-COMPLIANT</code>.</p>
    ///          <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    ///    for the <a>PutComplianceItems</a> API action. In this case, compliance data is not
    ///    managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API action.</p>
    ///          <p>By default, all associations use <code>AUTO</code> mode.</p>
    public let syncCompliance: AssociationSyncCompliance?
    /// <p>A location is a combination of AWS Regions and AWS accounts where you want to run the
    ///    association. Use this action to update an association in multiple Regions and multiple
    ///    accounts.</p>
    public let targetLocations: [TargetLocation]?
    /// <p>The targets of the association.</p>
    public let targets: [Target]?

    public init (
        applyOnlyAtCronInterval: Bool = false,
        associationId: String? = nil,
        associationName: String? = nil,
        associationVersion: String? = nil,
        automationTargetParameterName: String? = nil,
        calendarNames: [String]? = nil,
        complianceSeverity: AssociationComplianceSeverity? = nil,
        documentVersion: String? = nil,
        maxConcurrency: String? = nil,
        maxErrors: String? = nil,
        name: String? = nil,
        outputLocation: InstanceAssociationOutputLocation? = nil,
        parameters: [String:[String]]? = nil,
        scheduleExpression: String? = nil,
        syncCompliance: AssociationSyncCompliance? = nil,
        targetLocations: [TargetLocation]? = nil,
        targets: [Target]? = nil
    )
    {
        self.applyOnlyAtCronInterval = applyOnlyAtCronInterval
        self.associationId = associationId
        self.associationName = associationName
        self.associationVersion = associationVersion
        self.automationTargetParameterName = automationTargetParameterName
        self.calendarNames = calendarNames
        self.complianceSeverity = complianceSeverity
        self.documentVersion = documentVersion
        self.maxConcurrency = maxConcurrency
        self.maxErrors = maxErrors
        self.name = name
        self.outputLocation = outputLocation
        self.parameters = parameters
        self.scheduleExpression = scheduleExpression
        self.syncCompliance = syncCompliance
        self.targetLocations = targetLocations
        self.targets = targets
    }
}

extension UpdateAssociationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateAssociationInput(applyOnlyAtCronInterval: \(String(describing: applyOnlyAtCronInterval)), associationId: \(String(describing: associationId)), associationName: \(String(describing: associationName)), associationVersion: \(String(describing: associationVersion)), automationTargetParameterName: \(String(describing: automationTargetParameterName)), calendarNames: \(String(describing: calendarNames)), complianceSeverity: \(String(describing: complianceSeverity)), documentVersion: \(String(describing: documentVersion)), maxConcurrency: \(String(describing: maxConcurrency)), maxErrors: \(String(describing: maxErrors)), name: \(String(describing: name)), outputLocation: \(String(describing: outputLocation)), parameters: \(String(describing: parameters)), scheduleExpression: \(String(describing: scheduleExpression)), syncCompliance: \(String(describing: syncCompliance)), targetLocations: \(String(describing: targetLocations)), targets: \(String(describing: targets)))"}
}