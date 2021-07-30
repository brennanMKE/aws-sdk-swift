// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AppflowClient {
    /// <p>
    ///   Creates a new connector profile associated with your AWS account. There is a soft quota of 100 connector profiles per AWS account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel.
    /// </p>
    func createConnectorProfile(input: CreateConnectorProfileInput) async throws -> CreateConnectorProfileOutputResponse
    {
        typealias createConnectorProfileContinuation = CheckedContinuation<CreateConnectorProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConnectorProfileContinuation) in
            createConnectorProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    /// Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    ///
    /// </p>
    func createFlow(input: CreateFlowInput) async throws -> CreateFlowOutputResponse
    {
        typealias createFlowContinuation = CheckedContinuation<CreateFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createFlowContinuation) in
            createFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///  Enables you to delete an existing connector profile.
    /// </p>
    func deleteConnectorProfile(input: DeleteConnectorProfileInput) async throws -> DeleteConnectorProfileOutputResponse
    {
        typealias deleteConnectorProfileContinuation = CheckedContinuation<DeleteConnectorProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConnectorProfileContinuation) in
            deleteConnectorProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///   Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time.
    ///
    /// </p>
    func deleteFlow(input: DeleteFlowInput) async throws -> DeleteFlowOutputResponse
    {
        typealias deleteFlowContinuation = CheckedContinuation<DeleteFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteFlowContinuation) in
            deleteFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    /// Provides details regarding the entity used with the connector, with a description of the data model for each entity.
    /// </p>
    func describeConnectorEntity(input: DescribeConnectorEntityInput) async throws -> DescribeConnectorEntityOutputResponse
    {
        typealias describeConnectorEntityContinuation = CheckedContinuation<DescribeConnectorEntityOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConnectorEntityContinuation) in
            describeConnectorEntity(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///   Returns a list of <code>connector-profile</code> details matching the provided <code>connector-profile</code> names and <code>connector-types</code>. Both input lists are optional, and you can use them to filter the result. </p>
    ///          <p>If no names or <code>connector-types</code> are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.</p>
    func describeConnectorProfiles(input: DescribeConnectorProfilesInput) async throws -> DescribeConnectorProfilesOutputResponse
    {
        typealias describeConnectorProfilesContinuation = CheckedContinuation<DescribeConnectorProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConnectorProfilesContinuation) in
            describeConnectorProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///   Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow.
    ///   If there are more connectors than can be returned in one page, the response contains a <code>nextToken</code> object, which can be be passed in to the next call to the <code>DescribeConnectors</code> API operation to retrieve the next page.
    /// </p>
    func describeConnectors(input: DescribeConnectorsInput) async throws -> DescribeConnectorsOutputResponse
    {
        typealias describeConnectorsContinuation = CheckedContinuation<DescribeConnectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConnectorsContinuation) in
            describeConnectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///   Provides a description of the specified flow.
    ///
    /// </p>
    func describeFlow(input: DescribeFlowInput) async throws -> DescribeFlowOutputResponse
    {
        typealias describeFlowContinuation = CheckedContinuation<DescribeFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFlowContinuation) in
            describeFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    /// Fetches the execution history of the flow.
    /// </p>
    func describeFlowExecutionRecords(input: DescribeFlowExecutionRecordsInput) async throws -> DescribeFlowExecutionRecordsOutputResponse
    {
        typealias describeFlowExecutionRecordsContinuation = CheckedContinuation<DescribeFlowExecutionRecordsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFlowExecutionRecordsContinuation) in
            describeFlowExecutionRecords(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///   Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for <i>Account</i> and <i>Opportunity</i> entities, or query ServiceNow for the <i>Incident</i> entity.
    /// </p>
    func listConnectorEntities(input: ListConnectorEntitiesInput) async throws -> ListConnectorEntitiesOutputResponse
    {
        typealias listConnectorEntitiesContinuation = CheckedContinuation<ListConnectorEntitiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConnectorEntitiesContinuation) in
            listConnectorEntities(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    /// Lists all of the flows associated with your account.
    /// </p>
    func listFlows(input: ListFlowsInput) async throws -> ListFlowsOutputResponse
    {
        typealias listFlowsContinuation = CheckedContinuation<ListFlowsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFlowsContinuation) in
            listFlows(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    /// Retrieves the tags that are associated with a specified flow.
    /// </p>
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

    /// <p>
    /// Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow.
    ///
    /// </p>
    func startFlow(input: StartFlowInput) async throws -> StartFlowOutputResponse
    {
        typealias startFlowContinuation = CheckedContinuation<StartFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startFlowContinuation) in
            startFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    /// Deactivates the existing flow. For on-demand flows, this operation returns an <code>unsupportedOperationException</code> error message. For schedule and event-triggered flows, this operation deactivates the flow.
    /// </p>
    func stopFlow(input: StopFlowInput) async throws -> StopFlowOutputResponse
    {
        typealias stopFlowContinuation = CheckedContinuation<StopFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopFlowContinuation) in
            stopFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///  Applies a tag to the specified flow.
    /// </p>
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

    /// <p>
    ///  Removes a tag from the specified flow.
    /// </p>
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

    /// <p>
    ///   Updates a given connector profile associated with your account.
    /// </p>
    func updateConnectorProfile(input: UpdateConnectorProfileInput) async throws -> UpdateConnectorProfileOutputResponse
    {
        typealias updateConnectorProfileContinuation = CheckedContinuation<UpdateConnectorProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateConnectorProfileContinuation) in
            updateConnectorProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///      Updates an existing flow.
    /// </p>
    func updateFlow(input: UpdateFlowInput) async throws -> UpdateFlowOutputResponse
    {
        typealias updateFlowContinuation = CheckedContinuation<UpdateFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateFlowContinuation) in
            updateFlow(input: input) { result in
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