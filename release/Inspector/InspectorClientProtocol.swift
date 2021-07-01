// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Amazon Inspector</fullname>
///          <p>Amazon Inspector enables you to analyze the behavior of your AWS resources and to
///          identify potential security issues. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html"> Amazon Inspector User
///             Guide</a>.</p>
public protocol InspectorClientProtocol {
    /// <p>Assigns attributes (key and value pairs) to the findings that are specified by the
    ///          ARNs of the findings.</p>
    func addAttributesToFindings(input: AddAttributesToFindingsInput, completion: @escaping (SdkResult<AddAttributesToFindingsOutputResponse, AddAttributesToFindingsOutputError>) -> Void)
    /// <p>Creates a new assessment target using the ARN of the resource group that is generated
    ///          by <a>CreateResourceGroup</a>. If resourceGroupArn is not specified, all EC2
    ///          instances in the current AWS account and region are included in the assessment target. If
    ///          the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and
    ///          registers a service-linked role to grant Amazon Inspector access to AWS Services needed to
    ///          perform security assessments. You can create up to 50 assessment targets per AWS account.
    ///          You can run up to 500 concurrent agents per AWS account. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">
    ///             Amazon Inspector Assessment Targets</a>.</p>
    func createAssessmentTarget(input: CreateAssessmentTargetInput, completion: @escaping (SdkResult<CreateAssessmentTargetOutputResponse, CreateAssessmentTargetOutputError>) -> Void)
    /// <p>Creates an assessment template for the assessment target that is specified by the ARN
    ///          of the assessment target. If the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and
    ///          registers a service-linked role to grant Amazon Inspector access to AWS Services needed to
    ///          perform security assessments.</p>
    func createAssessmentTemplate(input: CreateAssessmentTemplateInput, completion: @escaping (SdkResult<CreateAssessmentTemplateOutputResponse, CreateAssessmentTemplateOutputError>) -> Void)
    /// <p>Starts the generation of an exclusions preview for the specified assessment template.
    ///          The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can
    ///          detect before it runs the assessment. </p>
    func createExclusionsPreview(input: CreateExclusionsPreviewInput, completion: @escaping (SdkResult<CreateExclusionsPreviewOutputResponse, CreateExclusionsPreviewOutputError>) -> Void)
    /// <p>Creates a resource group using the specified set of tags (key and value pairs) that
    ///          are used to select the EC2 instances to be included in an Amazon Inspector assessment
    ///          target. The created resource group is then used to create an Amazon Inspector assessment
    ///          target. For more information, see <a>CreateAssessmentTarget</a>.</p>
    func createResourceGroup(input: CreateResourceGroupInput, completion: @escaping (SdkResult<CreateResourceGroupOutputResponse, CreateResourceGroupOutputError>) -> Void)
    /// <p>Deletes the assessment run that is specified by the ARN of the assessment
    ///          run.</p>
    func deleteAssessmentRun(input: DeleteAssessmentRunInput, completion: @escaping (SdkResult<DeleteAssessmentRunOutputResponse, DeleteAssessmentRunOutputError>) -> Void)
    /// <p>Deletes the assessment target that is specified by the ARN of the assessment
    ///          target.</p>
    func deleteAssessmentTarget(input: DeleteAssessmentTargetInput, completion: @escaping (SdkResult<DeleteAssessmentTargetOutputResponse, DeleteAssessmentTargetOutputError>) -> Void)
    /// <p>Deletes the assessment template that is specified by the ARN of the assessment
    ///          template.</p>
    func deleteAssessmentTemplate(input: DeleteAssessmentTemplateInput, completion: @escaping (SdkResult<DeleteAssessmentTemplateOutputResponse, DeleteAssessmentTemplateOutputError>) -> Void)
    /// <p>Describes the assessment runs that are specified by the ARNs of the assessment
    ///          runs.</p>
    func describeAssessmentRuns(input: DescribeAssessmentRunsInput, completion: @escaping (SdkResult<DescribeAssessmentRunsOutputResponse, DescribeAssessmentRunsOutputError>) -> Void)
    /// <p>Describes the assessment targets that are specified by the ARNs of the assessment
    ///          targets.</p>
    func describeAssessmentTargets(input: DescribeAssessmentTargetsInput, completion: @escaping (SdkResult<DescribeAssessmentTargetsOutputResponse, DescribeAssessmentTargetsOutputError>) -> Void)
    /// <p>Describes the assessment templates that are specified by the ARNs of the assessment
    ///          templates.</p>
    func describeAssessmentTemplates(input: DescribeAssessmentTemplatesInput, completion: @escaping (SdkResult<DescribeAssessmentTemplatesOutputResponse, DescribeAssessmentTemplatesOutputError>) -> Void)
    /// <p>Describes the IAM role that enables Amazon Inspector to access your AWS
    ///          account.</p>
    func describeCrossAccountAccessRole(input: DescribeCrossAccountAccessRoleInput, completion: @escaping (SdkResult<DescribeCrossAccountAccessRoleOutputResponse, DescribeCrossAccountAccessRoleOutputError>) -> Void)
    /// <p>Describes the exclusions that are specified by the exclusions' ARNs.</p>
    func describeExclusions(input: DescribeExclusionsInput, completion: @escaping (SdkResult<DescribeExclusionsOutputResponse, DescribeExclusionsOutputError>) -> Void)
    /// <p>Describes the findings that are specified by the ARNs of the findings.</p>
    func describeFindings(input: DescribeFindingsInput, completion: @escaping (SdkResult<DescribeFindingsOutputResponse, DescribeFindingsOutputError>) -> Void)
    /// <p>Describes the resource groups that are specified by the ARNs of the resource
    ///          groups.</p>
    func describeResourceGroups(input: DescribeResourceGroupsInput, completion: @escaping (SdkResult<DescribeResourceGroupsOutputResponse, DescribeResourceGroupsOutputError>) -> Void)
    /// <p>Describes the rules packages that are specified by the ARNs of the rules
    ///          packages.</p>
    func describeRulesPackages(input: DescribeRulesPackagesInput, completion: @escaping (SdkResult<DescribeRulesPackagesOutputResponse, DescribeRulesPackagesOutputError>) -> Void)
    /// <p>Produces an assessment report that includes detailed and comprehensive results of a
    ///          specified assessment run. </p>
    func getAssessmentReport(input: GetAssessmentReportInput, completion: @escaping (SdkResult<GetAssessmentReportOutputResponse, GetAssessmentReportOutputError>) -> Void)
    /// <p>Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by
    ///          the preview token. You can obtain the preview token by running the CreateExclusionsPreview
    ///          API.</p>
    func getExclusionsPreview(input: GetExclusionsPreviewInput, completion: @escaping (SdkResult<GetExclusionsPreviewOutputResponse, GetExclusionsPreviewOutputError>) -> Void)
    /// <p>Information about the data that is collected for the specified assessment
    ///          run.</p>
    func getTelemetryMetadata(input: GetTelemetryMetadataInput, completion: @escaping (SdkResult<GetTelemetryMetadataOutputResponse, GetTelemetryMetadataOutputError>) -> Void)
    /// <p>Lists the agents of the assessment runs that are specified by the ARNs of the
    ///          assessment runs.</p>
    func listAssessmentRunAgents(input: ListAssessmentRunAgentsInput, completion: @escaping (SdkResult<ListAssessmentRunAgentsOutputResponse, ListAssessmentRunAgentsOutputError>) -> Void)
    /// <p>Lists the assessment runs that correspond to the assessment templates that are
    ///          specified by the ARNs of the assessment templates.</p>
    func listAssessmentRuns(input: ListAssessmentRunsInput, completion: @escaping (SdkResult<ListAssessmentRunsOutputResponse, ListAssessmentRunsOutputError>) -> Void)
    /// <p>Lists the ARNs of the assessment targets within this AWS account. For more
    ///          information about assessment targets, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">Amazon Inspector Assessment
    ///             Targets</a>.</p>
    func listAssessmentTargets(input: ListAssessmentTargetsInput, completion: @escaping (SdkResult<ListAssessmentTargetsOutputResponse, ListAssessmentTargetsOutputError>) -> Void)
    /// <p>Lists the assessment templates that correspond to the assessment targets that are
    ///          specified by the ARNs of the assessment targets.</p>
    func listAssessmentTemplates(input: ListAssessmentTemplatesInput, completion: @escaping (SdkResult<ListAssessmentTemplatesOutputResponse, ListAssessmentTemplatesOutputError>) -> Void)
    /// <p>Lists all the event subscriptions for the assessment template that is specified by
    ///          the ARN of the assessment template. For more information, see <a>SubscribeToEvent</a> and <a>UnsubscribeFromEvent</a>.</p>
    func listEventSubscriptions(input: ListEventSubscriptionsInput, completion: @escaping (SdkResult<ListEventSubscriptionsOutputResponse, ListEventSubscriptionsOutputError>) -> Void)
    /// <p>List exclusions that are generated by the assessment run.</p>
    func listExclusions(input: ListExclusionsInput, completion: @escaping (SdkResult<ListExclusionsOutputResponse, ListExclusionsOutputError>) -> Void)
    /// <p>Lists findings that are generated by the assessment runs that are specified by the
    ///          ARNs of the assessment runs.</p>
    func listFindings(input: ListFindingsInput, completion: @escaping (SdkResult<ListFindingsOutputResponse, ListFindingsOutputError>) -> Void)
    /// <p>Lists all available Amazon Inspector rules packages.</p>
    func listRulesPackages(input: ListRulesPackagesInput, completion: @escaping (SdkResult<ListRulesPackagesOutputResponse, ListRulesPackagesOutputError>) -> Void)
    /// <p>Lists all tags associated with an assessment template.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Previews the agents installed on the EC2 instances that are part of the specified
    ///          assessment target.</p>
    func previewAgents(input: PreviewAgentsInput, completion: @escaping (SdkResult<PreviewAgentsOutputResponse, PreviewAgentsOutputError>) -> Void)
    /// <p>Registers the IAM role that grants Amazon Inspector access to AWS Services needed to
    ///          perform security assessments.</p>
    func registerCrossAccountAccessRole(input: RegisterCrossAccountAccessRoleInput, completion: @escaping (SdkResult<RegisterCrossAccountAccessRoleOutputResponse, RegisterCrossAccountAccessRoleOutputError>) -> Void)
    /// <p>Removes entire attributes (key and value pairs) from the findings that are specified
    ///          by the ARNs of the findings where an attribute with the specified key exists.</p>
    func removeAttributesFromFindings(input: RemoveAttributesFromFindingsInput, completion: @escaping (SdkResult<RemoveAttributesFromFindingsOutputResponse, RemoveAttributesFromFindingsOutputError>) -> Void)
    /// <p>Sets tags (key and value pairs) to the assessment template that is specified by the
    ///          ARN of the assessment template.</p>
    func setTagsForResource(input: SetTagsForResourceInput, completion: @escaping (SdkResult<SetTagsForResourceOutputResponse, SetTagsForResourceOutputError>) -> Void)
    /// <p>Starts the assessment run specified by the ARN of the assessment template. For this
    ///          API to function properly, you must not exceed the limit of running up to 500 concurrent
    ///          agents per AWS account.</p>
    func startAssessmentRun(input: StartAssessmentRunInput, completion: @escaping (SdkResult<StartAssessmentRunOutputResponse, StartAssessmentRunOutputError>) -> Void)
    /// <p>Stops the assessment run that is specified by the ARN of the assessment
    ///          run.</p>
    func stopAssessmentRun(input: StopAssessmentRunInput, completion: @escaping (SdkResult<StopAssessmentRunOutputResponse, StopAssessmentRunOutputError>) -> Void)
    /// <p>Enables the process of sending Amazon Simple Notification Service (SNS) notifications
    ///          about a specified event to a specified SNS topic.</p>
    func subscribeToEvent(input: SubscribeToEventInput, completion: @escaping (SdkResult<SubscribeToEventOutputResponse, SubscribeToEventOutputError>) -> Void)
    /// <p>Disables the process of sending Amazon Simple Notification Service (SNS)
    ///          notifications about a specified event to a specified SNS topic.</p>
    func unsubscribeFromEvent(input: UnsubscribeFromEventInput, completion: @escaping (SdkResult<UnsubscribeFromEventOutputResponse, UnsubscribeFromEventOutputError>) -> Void)
    /// <p>Updates the assessment target that is specified by the ARN of the assessment
    ///          target.</p>
    ///          <p>If resourceGroupArn is not specified, all EC2 instances in the current AWS account
    ///          and region are included in the assessment target.</p>
    func updateAssessmentTarget(input: UpdateAssessmentTargetInput, completion: @escaping (SdkResult<UpdateAssessmentTargetOutputResponse, UpdateAssessmentTargetOutputError>) -> Void)
}