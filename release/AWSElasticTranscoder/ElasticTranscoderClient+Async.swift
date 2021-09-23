// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ElasticTranscoderClient {
    /// The CancelJob operation cancels an unfinished job.
    ///
    ///             You can only cancel a job that has a status of Submitted. To prevent a
    ///             pipeline from starting to process a job while you're getting the job identifier, use
    ///                 UpdatePipelineStatus to temporarily pause the pipeline.
    ///
    func cancelJob(input: CancelJobInput) async throws -> CancelJobOutputResponse
    {
        typealias cancelJobContinuation = CheckedContinuation<CancelJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelJobContinuation) in
            cancelJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified
    ///             plus information about the job that is created.
    ///         If you have specified more than one output for your jobs (for example, one output for the
    ///             Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to
    ///             list the jobs (as opposed to the AWS Console).
    func createJob(input: CreateJobInput) async throws -> CreateJobOutputResponse
    {
        typealias createJobContinuation = CheckedContinuation<CreateJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createJobContinuation) in
            createJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The CreatePipeline operation creates a pipeline with settings that you specify.
    func createPipeline(input: CreatePipelineInput) async throws -> CreatePipelineOutputResponse
    {
        typealias createPipelineContinuation = CheckedContinuation<CreatePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPipelineContinuation) in
            createPipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The CreatePreset operation creates a preset with settings that you specify.
    ///
    ///             Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements
    ///             and to determine whether they comply with H.264 standards. If your settings are not
    ///             valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (ValidationException) and
    ///             does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly
    ///             compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message
    ///             in the response. This helps you determine whether your settings comply with the H.264
    ///             standard while giving you greater flexibility with respect to the video that Elastic Transcoder
    ///             produces.
    ///
    ///         Elastic Transcoder uses the H.264 video-compression format. For more information, see the International
    ///             Telecommunication Union publication Recommendation ITU-T H.264: Advanced video coding
    ///                 for generic audiovisual services.
    func createPreset(input: CreatePresetInput) async throws -> CreatePresetOutputResponse
    {
        typealias createPresetContinuation = CheckedContinuation<CreatePresetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPresetContinuation) in
            createPreset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The DeletePipeline operation removes a pipeline.
    ///          You can only delete a pipeline that has never been used or that is not currently in use
    ///             (doesn't contain any active jobs). If the pipeline is currently in use,
    ///                 DeletePipeline returns an error.
    func deletePipeline(input: DeletePipelineInput) async throws -> DeletePipelineOutputResponse
    {
        typealias deletePipelineContinuation = CheckedContinuation<DeletePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePipelineContinuation) in
            deletePipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The DeletePreset operation removes a preset that you've added in an AWS region.
    ///
    ///             You can't delete the default presets that are included with Elastic Transcoder.
    ///
    func deletePreset(input: DeletePresetInput) async throws -> DeletePresetOutputResponse
    {
        typealias deletePresetContinuation = CheckedContinuation<DeletePresetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePresetContinuation) in
            deletePreset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline.
    ///         Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains
    ///             one element for each job that satisfies the search criteria.
    func listJobsByPipeline(input: ListJobsByPipelineInput) async throws -> ListJobsByPipelineOutputResponse
    {
        typealias listJobsByPipelineContinuation = CheckedContinuation<ListJobsByPipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobsByPipelineContinuation) in
            listJobsByPipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ListJobsByStatus operation gets a list of jobs that have a specified status. The response
    ///             body contains one element for each job that satisfies the search criteria.
    func listJobsByStatus(input: ListJobsByStatusInput) async throws -> ListJobsByStatusOutputResponse
    {
        typealias listJobsByStatusContinuation = CheckedContinuation<ListJobsByStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobsByStatusContinuation) in
            listJobsByStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    func listPipelines(input: ListPipelinesInput) async throws -> ListPipelinesOutputResponse
    {
        typealias listPipelinesContinuation = CheckedContinuation<ListPipelinesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPipelinesContinuation) in
            listPipelines(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that
    ///             you've added in an AWS region.
    func listPresets(input: ListPresetsInput) async throws -> ListPresetsOutputResponse
    {
        typealias listPresetsContinuation = CheckedContinuation<ListPresetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPresetsContinuation) in
            listPresets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ReadJob operation returns detailed information about a job.
    func readJob(input: ReadJobInput) async throws -> ReadJobOutputResponse
    {
        typealias readJobContinuation = CheckedContinuation<ReadJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: readJobContinuation) in
            readJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ReadPipeline operation gets detailed information about a pipeline.
    func readPipeline(input: ReadPipelineInput) async throws -> ReadPipelineOutputResponse
    {
        typealias readPipelineContinuation = CheckedContinuation<ReadPipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: readPipelineContinuation) in
            readPipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The ReadPreset operation gets detailed information about a preset.
    func readPreset(input: ReadPresetInput) async throws -> ReadPresetOutputResponse
    {
        typealias readPresetContinuation = CheckedContinuation<ReadPresetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: readPresetContinuation) in
            readPreset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The TestRole operation tests the IAM role used to create the pipeline.
    ///         The TestRole action lets you determine whether the IAM role you are using
    ///             has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding
    ///             process. The action attempts to assume the specified IAM role, checks read access to the
    ///             input and output buckets, and tries to send a test notification to Amazon SNS topics
    ///             that you specify.
    @available(*, deprecated)
    func testRole(input: TestRoleInput) async throws -> TestRoleOutputResponse
    {
        typealias testRoleContinuation = CheckedContinuation<TestRoleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: testRoleContinuation) in
            testRole(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Use the UpdatePipeline operation to update settings for a pipeline.
    ///
    ///             When you change pipeline settings, your changes take effect immediately.
    ///             Jobs that you have already submitted and that Elastic Transcoder has not started to process are
    ///             affected in addition to jobs that you submit after you change settings.
    ///
    func updatePipeline(input: UpdatePipelineInput) async throws -> UpdatePipelineOutputResponse
    {
        typealias updatePipelineContinuation = CheckedContinuation<UpdatePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePipelineContinuation) in
            updatePipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline.
    ///         When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.
    func updatePipelineNotifications(input: UpdatePipelineNotificationsInput) async throws -> UpdatePipelineNotificationsOutputResponse
    {
        typealias updatePipelineNotificationsContinuation = CheckedContinuation<UpdatePipelineNotificationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePipelineNotificationsContinuation) in
            updatePipelineNotifications(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline
    ///             stops or restarts the processing of jobs.
    ///         Changing the pipeline status is useful if you want to cancel one or more jobs. You can't
    ///             cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which
    ///             you submitted the jobs, you have more time to get the job IDs for the jobs that you want
    ///             to cancel, and to send a CancelJob request.
    func updatePipelineStatus(input: UpdatePipelineStatusInput) async throws -> UpdatePipelineStatusOutputResponse
    {
        typealias updatePipelineStatusContinuation = CheckedContinuation<UpdatePipelineStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePipelineStatusContinuation) in
            updatePipelineStatus(input: input) { result in
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
