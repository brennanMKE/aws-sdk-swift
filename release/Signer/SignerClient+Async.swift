// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SignerClient {
    /// <p>Adds cross-account permissions to a signing profile.</p>
    func addProfilePermission(input: AddProfilePermissionInput) async throws -> AddProfilePermissionOutputResponse
    {
        typealias addProfilePermissionContinuation = CheckedContinuation<AddProfilePermissionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addProfilePermissionContinuation) in
            addProfilePermission(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Changes the state of an <code>ACTIVE</code> signing profile to <code>CANCELED</code>.
    /// 			A canceled profile is still viewable with the <code>ListSigningProfiles</code>
    /// 			operation, but it cannot perform new signing jobs, and is deleted two years after
    /// 			cancelation.</p>
    func cancelSigningProfile(input: CancelSigningProfileInput) async throws -> CancelSigningProfileOutputResponse
    {
        typealias cancelSigningProfileContinuation = CheckedContinuation<CancelSigningProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelSigningProfileContinuation) in
            cancelSigningProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information about a specific code signing job. You specify the job by using
    /// 			the <code>jobId</code> value that is returned by the <a>StartSigningJob</a>
    /// 			operation. </p>
    func describeSigningJob(input: DescribeSigningJobInput) async throws -> DescribeSigningJobOutputResponse
    {
        typealias describeSigningJobContinuation = CheckedContinuation<DescribeSigningJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSigningJobContinuation) in
            describeSigningJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information on a specific signing platform.</p>
    func getSigningPlatform(input: GetSigningPlatformInput) async throws -> GetSigningPlatformOutputResponse
    {
        typealias getSigningPlatformContinuation = CheckedContinuation<GetSigningPlatformOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSigningPlatformContinuation) in
            getSigningPlatform(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information on a specific signing profile.</p>
    func getSigningProfile(input: GetSigningProfileInput) async throws -> GetSigningProfileOutputResponse
    {
        typealias getSigningProfileContinuation = CheckedContinuation<GetSigningProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSigningProfileContinuation) in
            getSigningProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the cross-account permissions associated with a signing profile.</p>
    func listProfilePermissions(input: ListProfilePermissionsInput) async throws -> ListProfilePermissionsOutputResponse
    {
        typealias listProfilePermissionsContinuation = CheckedContinuation<ListProfilePermissionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProfilePermissionsContinuation) in
            listProfilePermissions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all your signing jobs. You can use the <code>maxResults</code> parameter to
    /// 			limit the number of signing jobs that are returned in the response. If additional jobs
    /// 			remain to be listed, code signing returns a <code>nextToken</code> value. Use this value in
    /// 			subsequent calls to <code>ListSigningJobs</code> to fetch the remaining values. You can
    /// 			continue calling <code>ListSigningJobs</code> with your <code>maxResults</code>
    /// 			parameter and with new values that code signing returns in the <code>nextToken</code>
    /// 			parameter until all of your signing jobs have been returned. </p>
    func listSigningJobs(input: ListSigningJobsInput) async throws -> ListSigningJobsOutputResponse
    {
        typealias listSigningJobsContinuation = CheckedContinuation<ListSigningJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSigningJobsContinuation) in
            listSigningJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all signing platforms available in code signing that match the request parameters. If
    /// 			additional jobs remain to be listed, code signing returns a <code>nextToken</code> value. Use
    /// 			this value in subsequent calls to <code>ListSigningJobs</code> to fetch the remaining
    /// 			values. You can continue calling <code>ListSigningJobs</code> with your
    /// 				<code>maxResults</code> parameter and with new values that code signing returns in the
    /// 				<code>nextToken</code> parameter until all of your signing jobs have been
    /// 			returned.</p>
    func listSigningPlatforms(input: ListSigningPlatformsInput) async throws -> ListSigningPlatformsOutputResponse
    {
        typealias listSigningPlatformsContinuation = CheckedContinuation<ListSigningPlatformsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSigningPlatformsContinuation) in
            listSigningPlatforms(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all available signing profiles in your AWS account. Returns only profiles with
    /// 			an <code>ACTIVE</code> status unless the <code>includeCanceled</code> request field is
    /// 			set to <code>true</code>. If additional jobs remain to be listed, code signing returns a
    /// 				<code>nextToken</code> value. Use this value in subsequent calls to
    /// 				<code>ListSigningJobs</code> to fetch the remaining values. You can continue calling
    /// 				<code>ListSigningJobs</code> with your <code>maxResults</code> parameter and with
    /// 			new values that code signing returns in the <code>nextToken</code> parameter until all of your
    /// 			signing jobs have been returned.</p>
    func listSigningProfiles(input: ListSigningProfilesInput) async throws -> ListSigningProfilesOutputResponse
    {
        typealias listSigningProfilesContinuation = CheckedContinuation<ListSigningProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSigningProfilesContinuation) in
            listSigningProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of the tags associated with a signing profile resource.</p>
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

    /// <p>Creates a signing profile. A signing profile is a code signing template that can be used to
    /// 			carry out a pre-defined signing job. For more information, see <a href="http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html">http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html</a>
    ///          </p>
    func putSigningProfile(input: PutSigningProfileInput) async throws -> PutSigningProfileOutputResponse
    {
        typealias putSigningProfileContinuation = CheckedContinuation<PutSigningProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putSigningProfileContinuation) in
            putSigningProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Removes cross-account permissions from a signing profile.</p>
    func removeProfilePermission(input: RemoveProfilePermissionInput) async throws -> RemoveProfilePermissionOutputResponse
    {
        typealias removeProfilePermissionContinuation = CheckedContinuation<RemoveProfilePermissionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeProfilePermissionContinuation) in
            removeProfilePermission(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Changes the state of a signing job to REVOKED. This indicates that the signature is no
    /// 			longer valid.</p>
    func revokeSignature(input: RevokeSignatureInput) async throws -> RevokeSignatureOutputResponse
    {
        typealias revokeSignatureContinuation = CheckedContinuation<RevokeSignatureOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: revokeSignatureContinuation) in
            revokeSignature(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Changes the state of a signing profile to REVOKED. This indicates that signatures
    /// 			generated using the signing profile after an effective start date are no longer
    /// 			valid.</p>
    func revokeSigningProfile(input: RevokeSigningProfileInput) async throws -> RevokeSigningProfileOutputResponse
    {
        typealias revokeSigningProfileContinuation = CheckedContinuation<RevokeSigningProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: revokeSigningProfileContinuation) in
            revokeSigningProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Initiates a signing job to be performed on the code provided. Signing jobs are
    /// 			viewable by the <code>ListSigningJobs</code> operation for two years after they are
    /// 			performed. Note the following requirements: </p>
    /// 		       <ul>
    ///             <li>
    /// 				           <p> You must create an Amazon S3 source bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html">Create a Bucket</a> in the
    /// 						<i>Amazon S3 Getting Started Guide</i>. </p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>Your S3 source bucket must be version enabled.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>You must create an S3 destination bucket. Code signing uses your S3 destination
    /// 					bucket to write your signed code.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>You specify the name of the source and destination buckets when calling the
    /// 						<code>StartSigningJob</code> operation.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>You must also specify a request token that identifies your request to
    /// 					code signing.</p>
    /// 			         </li>
    ///          </ul>
    /// 		       <p>You can call the <a>DescribeSigningJob</a> and the <a>ListSigningJobs</a> actions after you call
    /// 			<code>StartSigningJob</code>.</p>
    /// 		       <p>For a Java example that shows how to use this action, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/">http://docs.aws.amazon.com/acm/latest/userguide/</a>
    ///          </p>
    func startSigningJob(input: StartSigningJobInput) async throws -> StartSigningJobOutputResponse
    {
        typealias startSigningJobContinuation = CheckedContinuation<StartSigningJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startSigningJobContinuation) in
            startSigningJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Adds one or more tags to a signing profile. Tags are labels that you can use to
    /// 			identify and organize your AWS resources. Each tag consists of a key and an optional
    /// 			value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify
    /// 			the tag, use a key-value pair.</p>
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

    /// <p>Removes one or more tags from a signing profile. To remove the tags, specify a list of
    /// 			tag keys.</p>
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

}
#endif