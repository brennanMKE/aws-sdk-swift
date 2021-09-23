// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension DlmClient {
    /// Creates a policy to manage the lifecycle of the specified AWS resources. You can
    /// 			create up to 100 lifecycle policies.
    func createLifecyclePolicy(input: CreateLifecyclePolicyInput) async throws -> CreateLifecyclePolicyOutputResponse
    {
        typealias createLifecyclePolicyContinuation = CheckedContinuation<CreateLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLifecyclePolicyContinuation) in
            createLifecyclePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified lifecycle policy and halts the automated operations that the
    /// 			policy specified.
    func deleteLifecyclePolicy(input: DeleteLifecyclePolicyInput) async throws -> DeleteLifecyclePolicyOutputResponse
    {
        typealias deleteLifecyclePolicyContinuation = CheckedContinuation<DeleteLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLifecyclePolicyContinuation) in
            deleteLifecyclePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets summary information about all or the specified data lifecycle policies.
    /// 		       To get complete information about a policy, use GetLifecyclePolicy.
    func getLifecyclePolicies(input: GetLifecyclePoliciesInput) async throws -> GetLifecyclePoliciesOutputResponse
    {
        typealias getLifecyclePoliciesContinuation = CheckedContinuation<GetLifecyclePoliciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLifecyclePoliciesContinuation) in
            getLifecyclePolicies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets detailed information about the specified lifecycle policy.
    func getLifecyclePolicy(input: GetLifecyclePolicyInput) async throws -> GetLifecyclePolicyOutputResponse
    {
        typealias getLifecyclePolicyContinuation = CheckedContinuation<GetLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLifecyclePolicyContinuation) in
            getLifecyclePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for the specified resource.
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

    /// Adds the specified tags to the specified resource.
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

    /// Removes the specified tags from the specified resource.
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

    /// Updates the specified lifecycle policy.
    func updateLifecyclePolicy(input: UpdateLifecyclePolicyInput) async throws -> UpdateLifecyclePolicyOutputResponse
    {
        typealias updateLifecyclePolicyContinuation = CheckedContinuation<UpdateLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLifecyclePolicyContinuation) in
            updateLifecyclePolicy(input: input) { result in
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
