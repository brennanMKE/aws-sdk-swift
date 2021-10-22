// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SsmIncidentsClient {
    /// A replication set replicates and encrypts your data to the provided Regions with the
    ///             provided KMS key.
    func createReplicationSet(input: CreateReplicationSetInput) async throws -> CreateReplicationSetOutputResponse
    {
        typealias createReplicationSetContinuation = CheckedContinuation<CreateReplicationSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createReplicationSetContinuation) in
            createReplicationSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a response plan that automates the initial response to incidents. A response
    ///             plan engages contacts, starts chat channel collaboration, and
    ///             initiates
    ///             runbooks at the beginning of an incident.
    func createResponsePlan(input: CreateResponsePlanInput) async throws -> CreateResponsePlanOutputResponse
    {
        typealias createResponsePlanContinuation = CheckedContinuation<CreateResponsePlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createResponsePlanContinuation) in
            createResponsePlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a custom timeline event on the incident details page of an incident record.
    ///             Timeline events are automatically created by Incident Manager, marking key moment during an
    ///             incident. You can create custom timeline events to mark important events that are
    ///             automatically detected by Incident Manager.
    func createTimelineEvent(input: CreateTimelineEventInput) async throws -> CreateTimelineEventOutputResponse
    {
        typealias createTimelineEventContinuation = CheckedContinuation<CreateTimelineEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createTimelineEventContinuation) in
            createTimelineEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete an incident record from Incident Manager.
    func deleteIncidentRecord(input: DeleteIncidentRecordInput) async throws -> DeleteIncidentRecordOutputResponse
    {
        typealias deleteIncidentRecordContinuation = CheckedContinuation<DeleteIncidentRecordOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteIncidentRecordContinuation) in
            deleteIncidentRecord(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes all Regions in your replication set. Deleting the replication set deletes all
    ///             Incident Manager data.
    func deleteReplicationSet(input: DeleteReplicationSetInput) async throws -> DeleteReplicationSetOutputResponse
    {
        typealias deleteReplicationSetContinuation = CheckedContinuation<DeleteReplicationSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteReplicationSetContinuation) in
            deleteReplicationSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the resource policy that
    ///             AWS
    ///             Resource Access Manager uses to share your Incident Manager resource.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    {
        typealias deleteResourcePolicyContinuation = CheckedContinuation<DeleteResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteResourcePolicyContinuation) in
            deleteResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified response plan. Deleting a response plan stops all linked
    ///             CloudWatch alarms and EventBridge events from creating an incident with this response
    ///             plan.
    func deleteResponsePlan(input: DeleteResponsePlanInput) async throws -> DeleteResponsePlanOutputResponse
    {
        typealias deleteResponsePlanContinuation = CheckedContinuation<DeleteResponsePlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteResponsePlanContinuation) in
            deleteResponsePlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a timeline event from an incident.
    func deleteTimelineEvent(input: DeleteTimelineEventInput) async throws -> DeleteTimelineEventOutputResponse
    {
        typealias deleteTimelineEventContinuation = CheckedContinuation<DeleteTimelineEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteTimelineEventContinuation) in
            deleteTimelineEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the details of the specified incident record.
    func getIncidentRecord(input: GetIncidentRecordInput) async throws -> GetIncidentRecordOutputResponse
    {
        typealias getIncidentRecordContinuation = CheckedContinuation<GetIncidentRecordOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getIncidentRecordContinuation) in
            getIncidentRecord(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieve your Incident Manager replication set.
    func getReplicationSet(input: GetReplicationSetInput) async throws -> GetReplicationSetOutputResponse
    {
        typealias getReplicationSetContinuation = CheckedContinuation<GetReplicationSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReplicationSetContinuation) in
            getReplicationSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the resource policies attached to the specified response plan.
    func getResourcePolicies(input: GetResourcePoliciesInput) async throws -> GetResourcePoliciesOutputResponse
    {
        typealias getResourcePoliciesContinuation = CheckedContinuation<GetResourcePoliciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getResourcePoliciesContinuation) in
            getResourcePolicies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the details of the specified response plan.
    func getResponsePlan(input: GetResponsePlanInput) async throws -> GetResponsePlanOutputResponse
    {
        typealias getResponsePlanContinuation = CheckedContinuation<GetResponsePlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getResponsePlanContinuation) in
            getResponsePlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a timeline event based on its ID and incident record.
    func getTimelineEvent(input: GetTimelineEventInput) async throws -> GetTimelineEventOutputResponse
    {
        typealias getTimelineEventContinuation = CheckedContinuation<GetTimelineEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTimelineEventContinuation) in
            getTimelineEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all incident records in your account. Use this command to retrieve the Amazon
    ///             Resource Name (ARN) of the incident record you want to update.
    func listIncidentRecords(input: ListIncidentRecordsInput) async throws -> ListIncidentRecordsOutputResponse
    {
        typealias listIncidentRecordsContinuation = CheckedContinuation<ListIncidentRecordsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listIncidentRecordsContinuation) in
            listIncidentRecords(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all related items for an incident record.
    func listRelatedItems(input: ListRelatedItemsInput) async throws -> ListRelatedItemsOutputResponse
    {
        typealias listRelatedItemsContinuation = CheckedContinuation<ListRelatedItemsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRelatedItemsContinuation) in
            listRelatedItems(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists details about the replication set configured in your account.
    func listReplicationSets(input: ListReplicationSetsInput) async throws -> ListReplicationSetsOutputResponse
    {
        typealias listReplicationSetsContinuation = CheckedContinuation<ListReplicationSetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReplicationSetsContinuation) in
            listReplicationSets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all response plans in your account.
    func listResponsePlans(input: ListResponsePlansInput) async throws -> ListResponsePlansOutputResponse
    {
        typealias listResponsePlansContinuation = CheckedContinuation<ListResponsePlansOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listResponsePlansContinuation) in
            listResponsePlans(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags that are attached to the specified response plan.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists timeline events of the specified incident record.
    func listTimelineEvents(input: ListTimelineEventsInput) async throws -> ListTimelineEventsOutputResponse
    {
        typealias listTimelineEventsContinuation = CheckedContinuation<ListTimelineEventsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTimelineEventsContinuation) in
            listTimelineEvents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds a resource policy to the specified response plan.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    {
        typealias putResourcePolicyContinuation = CheckedContinuation<PutResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putResourcePolicyContinuation) in
            putResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Used to start an incident from CloudWatch alarms, EventBridge events, or manually.
    func startIncident(input: StartIncidentInput) async throws -> StartIncidentOutputResponse
    {
        typealias startIncidentContinuation = CheckedContinuation<StartIncidentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startIncidentContinuation) in
            startIncident(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds a tag to a response plan.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes a tag from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update deletion protection to either allow or deny deletion of the final Region in a
    ///             replication set.
    func updateDeletionProtection(input: UpdateDeletionProtectionInput) async throws -> UpdateDeletionProtectionOutputResponse
    {
        typealias updateDeletionProtectionContinuation = CheckedContinuation<UpdateDeletionProtectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDeletionProtectionContinuation) in
            updateDeletionProtection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update the details of an incident record. You can use this action to update an
    ///             incident record from the defined chat channel. For more information about using actions
    ///             in chat channels, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact">Interacting through chat.
    func updateIncidentRecord(input: UpdateIncidentRecordInput) async throws -> UpdateIncidentRecordOutputResponse
    {
        typealias updateIncidentRecordContinuation = CheckedContinuation<UpdateIncidentRecordOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateIncidentRecordContinuation) in
            updateIncidentRecord(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Add or remove related items from the related items tab of an incident record.
    func updateRelatedItems(input: UpdateRelatedItemsInput) async throws -> UpdateRelatedItemsOutputResponse
    {
        typealias updateRelatedItemsContinuation = CheckedContinuation<UpdateRelatedItemsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRelatedItemsContinuation) in
            updateRelatedItems(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Add or delete Regions from your replication set.
    func updateReplicationSet(input: UpdateReplicationSetInput) async throws -> UpdateReplicationSetOutputResponse
    {
        typealias updateReplicationSetContinuation = CheckedContinuation<UpdateReplicationSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateReplicationSetContinuation) in
            updateReplicationSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified response plan.
    func updateResponsePlan(input: UpdateResponsePlanInput) async throws -> UpdateResponsePlanOutputResponse
    {
        typealias updateResponsePlanContinuation = CheckedContinuation<UpdateResponsePlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateResponsePlanContinuation) in
            updateResponsePlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a timeline event. You can update events of type Custom
    ///             Event.
    func updateTimelineEvent(input: UpdateTimelineEventInput) async throws -> UpdateTimelineEventOutputResponse
    {
        typealias updateTimelineEventContinuation = CheckedContinuation<UpdateTimelineEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateTimelineEventContinuation) in
            updateTimelineEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
