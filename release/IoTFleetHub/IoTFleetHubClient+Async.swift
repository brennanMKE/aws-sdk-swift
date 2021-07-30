// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension IoTFleetHubClient {
    /// <p>Creates a Fleet Hub for AWS IoT Device Management web application.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    {
        typealias createApplicationContinuation = CheckedContinuation<CreateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createApplicationContinuation) in
            createApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a Fleet Hub for AWS IoT Device Management web application.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    {
        typealias deleteApplicationContinuation = CheckedContinuation<DeleteApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteApplicationContinuation) in
            deleteApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets information about a Fleet Hub for AWS IoT Device Management web application.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
    func describeApplication(input: DescribeApplicationInput) async throws -> DescribeApplicationOutputResponse
    {
        typealias describeApplicationContinuation = CheckedContinuation<DescribeApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeApplicationContinuation) in
            describeApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets a list of Fleet Hub for AWS IoT Device Management web applications for the current account.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    {
        typealias listApplicationsContinuation = CheckedContinuation<ListApplicationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationsContinuation) in
            listApplications(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the tags for the specified resource.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
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

    /// <p>Adds to or modifies the tags of the specified resource. Tags are metadata which can be used to manage a resource.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
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

    /// <p>Removes the specified tags (metadata) from the resource.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
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

    /// <p>Updates information about a Fleet Hub for a AWS IoT Device Management web application.</p>
    ///          <note>
    ///             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    ///          </note>
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    {
        typealias updateApplicationContinuation = CheckedContinuation<UpdateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateApplicationContinuation) in
            updateApplication(input: input) { result in
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