// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Well-Architected Tool This is the Well-Architected Tool API Reference. The WA Tool API provides programmatic access to the [Well-Architected Tool](http://aws.amazon.com/well-architected-tool) in the [Amazon Web Services Management Console](https://console.aws.amazon.com/wellarchitected). For information about the Well-Architected Tool, see the [Well-Architected Tool User Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).
public protocol WellArchitectedClientProtocol {
    /// Associate a lens to a workload. Up to 10 lenses can be associated with a workload in a single API operation. A maximum of 20 lenses can be associated with a workload. Disclaimer By accessing and/or applying custom lenses created by another Amazon Web Services user or account, you acknowledge that custom lenses created by other users and shared with you are Third Party Content as defined in the Amazon Web Services Customer Agreement.
    func associateLenses(input: AssociateLensesInput, completion: @escaping (ClientRuntime.SdkResult<AssociateLensesOutputResponse, AssociateLensesOutputError>) -> Void)
    /// Create a lens share. The owner of a lens can share it with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Shared access to a lens is not removed until the lens invitation is deleted. Disclaimer By sharing your custom lenses with other Amazon Web Services accounts, you acknowledge that Amazon Web Services will make your custom lenses available to those other accounts. Those other accounts may continue to access and use your shared custom lenses even if you delete the custom lenses from your own Amazon Web Services account or terminate your Amazon Web Services account.
    func createLensShare(input: CreateLensShareInput, completion: @escaping (ClientRuntime.SdkResult<CreateLensShareOutputResponse, CreateLensShareOutputError>) -> Void)
    /// Create a new lens version. A lens can have up to 100 versions. After a lens has been imported, create a new lens version to publish it. The owner of a lens can share the lens with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Only the owner of a lens can delete it.
    func createLensVersion(input: CreateLensVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateLensVersionOutputResponse, CreateLensVersionOutputError>) -> Void)
    /// Create a milestone for an existing workload.
    func createMilestone(input: CreateMilestoneInput, completion: @escaping (ClientRuntime.SdkResult<CreateMilestoneOutputResponse, CreateMilestoneOutputError>) -> Void)
    /// Create a new workload. The owner of a workload can share the workload with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Only the owner of a workload can delete it. For more information, see [Defining a Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html) in the Well-Architected Tool User Guide.
    func createWorkload(input: CreateWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<CreateWorkloadOutputResponse, CreateWorkloadOutputError>) -> Void)
    /// Create a workload share. The owner of a workload can share it with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Shared access to a workload is not removed until the workload invitation is deleted. For more information, see [Sharing a Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html) in the Well-Architected Tool User Guide.
    func createWorkloadShare(input: CreateWorkloadShareInput, completion: @escaping (ClientRuntime.SdkResult<CreateWorkloadShareOutputResponse, CreateWorkloadShareOutputError>) -> Void)
    /// Delete an existing lens. Only the owner of a lens can delete it. After the lens is deleted, Amazon Web Services accounts and IAM users that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads. Disclaimer By sharing your custom lenses with other Amazon Web Services accounts, you acknowledge that Amazon Web Services will make your custom lenses available to those other accounts. Those other accounts may continue to access and use your shared custom lenses even if you delete the custom lenses from your own Amazon Web Services account or terminate your Amazon Web Services account.
    func deleteLens(input: DeleteLensInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLensOutputResponse, DeleteLensOutputError>) -> Void)
    /// Delete a lens share. After the lens share is deleted, Amazon Web Services accounts and IAM users that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads. Disclaimer By sharing your custom lenses with other Amazon Web Services accounts, you acknowledge that Amazon Web Services will make your custom lenses available to those other accounts. Those other accounts may continue to access and use your shared custom lenses even if you delete the custom lenses from your own Amazon Web Services account or terminate your Amazon Web Services account.
    func deleteLensShare(input: DeleteLensShareInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLensShareOutputResponse, DeleteLensShareOutputError>) -> Void)
    /// Delete an existing workload.
    func deleteWorkload(input: DeleteWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<DeleteWorkloadOutputResponse, DeleteWorkloadOutputError>) -> Void)
    /// Delete a workload share.
    func deleteWorkloadShare(input: DeleteWorkloadShareInput, completion: @escaping (ClientRuntime.SdkResult<DeleteWorkloadShareOutputResponse, DeleteWorkloadShareOutputError>) -> Void)
    /// Disassociate a lens from a workload. Up to 10 lenses can be disassociated from a workload in a single API operation. The Amazon Web Services Well-Architected Framework lens (wellarchitected) cannot be removed from a workload.
    func disassociateLenses(input: DisassociateLensesInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateLensesOutputResponse, DisassociateLensesOutputError>) -> Void)
    /// Export an existing lens. Lenses are defined in JSON. For more information, see [JSON format specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html) in the Well-Architected Tool User Guide. Only the owner of a lens can export it. Disclaimer Do not include or gather personal identifiable information (PII) of end users or other identifiable individuals in or via your custom lenses. If your custom lens or those shared with you and used in your account do include or collect PII you are responsible for: ensuring that the included PII is processed in accordance with applicable law, providing adequate privacy notices, and obtaining necessary consents for processing such data.
    func exportLens(input: ExportLensInput, completion: @escaping (ClientRuntime.SdkResult<ExportLensOutputResponse, ExportLensOutputError>) -> Void)
    /// Get the answer to a specific question in a workload review.
    func getAnswer(input: GetAnswerInput, completion: @escaping (ClientRuntime.SdkResult<GetAnswerOutputResponse, GetAnswerOutputError>) -> Void)
    /// Get an existing lens.
    func getLens(input: GetLensInput, completion: @escaping (ClientRuntime.SdkResult<GetLensOutputResponse, GetLensOutputError>) -> Void)
    /// Get lens review.
    func getLensReview(input: GetLensReviewInput, completion: @escaping (ClientRuntime.SdkResult<GetLensReviewOutputResponse, GetLensReviewOutputError>) -> Void)
    /// Get lens review report.
    func getLensReviewReport(input: GetLensReviewReportInput, completion: @escaping (ClientRuntime.SdkResult<GetLensReviewReportOutputResponse, GetLensReviewReportOutputError>) -> Void)
    /// Get lens version differences.
    func getLensVersionDifference(input: GetLensVersionDifferenceInput, completion: @escaping (ClientRuntime.SdkResult<GetLensVersionDifferenceOutputResponse, GetLensVersionDifferenceOutputError>) -> Void)
    /// Get a milestone for an existing workload.
    func getMilestone(input: GetMilestoneInput, completion: @escaping (ClientRuntime.SdkResult<GetMilestoneOutputResponse, GetMilestoneOutputError>) -> Void)
    /// Get an existing workload.
    func getWorkload(input: GetWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<GetWorkloadOutputResponse, GetWorkloadOutputError>) -> Void)
    /// Import a new lens. The lens cannot be applied to workloads or shared with other Amazon Web Services accounts until it's published with [CreateLensVersion] Lenses are defined in JSON. For more information, see [JSON format specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html) in the Well-Architected Tool User Guide. A custom lens cannot exceed 500 KB in size. Disclaimer Do not include or gather personal identifiable information (PII) of end users or other identifiable individuals in or via your custom lenses. If your custom lens or those shared with you and used in your account do include or collect PII you are responsible for: ensuring that the included PII is processed in accordance with applicable law, providing adequate privacy notices, and obtaining necessary consents for processing such data.
    func importLens(input: ImportLensInput, completion: @escaping (ClientRuntime.SdkResult<ImportLensOutputResponse, ImportLensOutputError>) -> Void)
    /// List of answers.
    func listAnswers(input: ListAnswersInput, completion: @escaping (ClientRuntime.SdkResult<ListAnswersOutputResponse, ListAnswersOutputError>) -> Void)
    /// List the available lenses.
    func listLenses(input: ListLensesInput, completion: @escaping (ClientRuntime.SdkResult<ListLensesOutputResponse, ListLensesOutputError>) -> Void)
    /// List lens review improvements.
    func listLensReviewImprovements(input: ListLensReviewImprovementsInput, completion: @escaping (ClientRuntime.SdkResult<ListLensReviewImprovementsOutputResponse, ListLensReviewImprovementsOutputError>) -> Void)
    /// List lens reviews.
    func listLensReviews(input: ListLensReviewsInput, completion: @escaping (ClientRuntime.SdkResult<ListLensReviewsOutputResponse, ListLensReviewsOutputError>) -> Void)
    /// List the lens shares associated with the lens.
    func listLensShares(input: ListLensSharesInput, completion: @escaping (ClientRuntime.SdkResult<ListLensSharesOutputResponse, ListLensSharesOutputError>) -> Void)
    /// List all milestones for an existing workload.
    func listMilestones(input: ListMilestonesInput, completion: @escaping (ClientRuntime.SdkResult<ListMilestonesOutputResponse, ListMilestonesOutputError>) -> Void)
    /// List lens notifications.
    func listNotifications(input: ListNotificationsInput, completion: @escaping (ClientRuntime.SdkResult<ListNotificationsOutputResponse, ListNotificationsOutputError>) -> Void)
    /// List the workload invitations.
    func listShareInvitations(input: ListShareInvitationsInput, completion: @escaping (ClientRuntime.SdkResult<ListShareInvitationsOutputResponse, ListShareInvitationsOutputError>) -> Void)
    /// List the tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// List workloads. Paginated.
    func listWorkloads(input: ListWorkloadsInput, completion: @escaping (ClientRuntime.SdkResult<ListWorkloadsOutputResponse, ListWorkloadsOutputError>) -> Void)
    /// List the workload shares associated with the workload.
    func listWorkloadShares(input: ListWorkloadSharesInput, completion: @escaping (ClientRuntime.SdkResult<ListWorkloadSharesOutputResponse, ListWorkloadSharesOutputError>) -> Void)
    /// Adds one or more tags to the specified resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Deletes specified tags from a resource. To specify multiple tags, use separate tagKeys parameters, for example: DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Update the answer to a specific question in a workload review.
    func updateAnswer(input: UpdateAnswerInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAnswerOutputResponse, UpdateAnswerOutputError>) -> Void)
    /// Update lens review.
    func updateLensReview(input: UpdateLensReviewInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLensReviewOutputResponse, UpdateLensReviewOutputError>) -> Void)
    /// Update a workload invitation.
    func updateShareInvitation(input: UpdateShareInvitationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateShareInvitationOutputResponse, UpdateShareInvitationOutputError>) -> Void)
    /// Update an existing workload.
    func updateWorkload(input: UpdateWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<UpdateWorkloadOutputResponse, UpdateWorkloadOutputError>) -> Void)
    /// Update a workload share.
    func updateWorkloadShare(input: UpdateWorkloadShareInput, completion: @escaping (ClientRuntime.SdkResult<UpdateWorkloadShareOutputResponse, UpdateWorkloadShareOutputError>) -> Void)
    /// Upgrade lens review.
    func upgradeLensReview(input: UpgradeLensReviewInput, completion: @escaping (ClientRuntime.SdkResult<UpgradeLensReviewOutputResponse, UpgradeLensReviewOutputError>) -> Void)
}

public enum WellArchitectedClientTypes {}
