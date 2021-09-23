// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension TranslateClient {
    /// Creates a parallel data resource in Amazon Translate by importing an input file from
    ///       Amazon S3. Parallel data files contain examples of source phrases and their translations from
    ///       your translation memory. By adding parallel data, you can influence the style, tone, and word
    ///       choice in your translation output.
    func createParallelData(input: CreateParallelDataInput) async throws -> CreateParallelDataOutputResponse
    {
        typealias createParallelDataContinuation = CheckedContinuation<CreateParallelDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createParallelDataContinuation) in
            createParallelData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a parallel data resource in Amazon Translate.
    func deleteParallelData(input: DeleteParallelDataInput) async throws -> DeleteParallelDataOutputResponse
    {
        typealias deleteParallelDataContinuation = CheckedContinuation<DeleteParallelDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteParallelDataContinuation) in
            deleteParallelData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// A synchronous action that deletes a custom terminology.
    func deleteTerminology(input: DeleteTerminologyInput) async throws -> DeleteTerminologyOutputResponse
    {
        typealias deleteTerminologyContinuation = CheckedContinuation<DeleteTerminologyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteTerminologyContinuation) in
            deleteTerminology(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the properties associated with an asycnhronous batch translation job including name,
    ///       ID, status, source and target languages, input/output S3 buckets, and so on.
    func describeTextTranslationJob(input: DescribeTextTranslationJobInput) async throws -> DescribeTextTranslationJobOutputResponse
    {
        typealias describeTextTranslationJobContinuation = CheckedContinuation<DescribeTextTranslationJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeTextTranslationJobContinuation) in
            describeTextTranslationJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides information about a parallel data resource.
    func getParallelData(input: GetParallelDataInput) async throws -> GetParallelDataOutputResponse
    {
        typealias getParallelDataContinuation = CheckedContinuation<GetParallelDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getParallelDataContinuation) in
            getParallelData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a custom terminology.
    func getTerminology(input: GetTerminologyInput) async throws -> GetTerminologyOutputResponse
    {
        typealias getTerminologyContinuation = CheckedContinuation<GetTerminologyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTerminologyContinuation) in
            getTerminology(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates or updates a custom terminology, depending on whether or not one already exists
    ///       for the given terminology name. Importing a terminology with the same name as an existing one
    ///       will merge the terminologies based on the chosen merge strategy. Currently, the only supported
    ///       merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing
    ///       terminology of the same name.
    ///          If you import a terminology that overwrites an existing one, the new terminology take up
    ///       to 10 minutes to fully propagate and be available for use in a translation due to cache
    ///       policies with the DataPlane service that performs the translations.
    func importTerminology(input: ImportTerminologyInput) async throws -> ImportTerminologyOutputResponse
    {
        typealias importTerminologyContinuation = CheckedContinuation<ImportTerminologyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importTerminologyContinuation) in
            importTerminology(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a list of your parallel data resources in Amazon Translate.
    func listParallelData(input: ListParallelDataInput) async throws -> ListParallelDataOutputResponse
    {
        typealias listParallelDataContinuation = CheckedContinuation<ListParallelDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listParallelDataContinuation) in
            listParallelData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a list of custom terminologies associated with your account.
    func listTerminologies(input: ListTerminologiesInput) async throws -> ListTerminologiesOutputResponse
    {
        typealias listTerminologiesContinuation = CheckedContinuation<ListTerminologiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTerminologiesContinuation) in
            listTerminologies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a list of the batch translation jobs that you have submitted.
    func listTextTranslationJobs(input: ListTextTranslationJobsInput) async throws -> ListTextTranslationJobsOutputResponse
    {
        typealias listTextTranslationJobsContinuation = CheckedContinuation<ListTextTranslationJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTextTranslationJobsContinuation) in
            listTextTranslationJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts an asynchronous batch translation job. Batch translation jobs can be used to
    ///       translate large volumes of text across multiple documents at once. For more information, see
    ///         async.
    ///
    ///          Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.
    ///
    ///             Amazon Translate does not support batch translation of multiple source languages at once.
    ///
    func startTextTranslationJob(input: StartTextTranslationJobInput) async throws -> StartTextTranslationJobOutputResponse
    {
        typealias startTextTranslationJobContinuation = CheckedContinuation<StartTextTranslationJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startTextTranslationJobContinuation) in
            startTextTranslationJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops an asynchronous batch translation job that is in progress.
    ///          If the job's state is IN_PROGRESS, the job will be marked for termination and
    ///       put into the STOP_REQUESTED state. If the job completes before it can be stopped,
    ///       it is put into the COMPLETED state. Otherwise, the job is put into the
    ///         STOPPED state.
    ///          Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs
    ///       operations to get a batch translation job's JobId.
    func stopTextTranslationJob(input: StopTextTranslationJobInput) async throws -> StopTextTranslationJobOutputResponse
    {
        typealias stopTextTranslationJobContinuation = CheckedContinuation<StopTextTranslationJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopTextTranslationJobContinuation) in
            stopTextTranslationJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Translates input text from the source language to the target language. For a list of
    ///       available languages and language codes, see what-is-languages.
    func translateText(input: TranslateTextInput) async throws -> TranslateTextOutputResponse
    {
        typealias translateTextContinuation = CheckedContinuation<TranslateTextOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: translateTextContinuation) in
            translateText(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a previously created parallel data resource by importing a new input file from
    ///       Amazon S3.
    func updateParallelData(input: UpdateParallelDataInput) async throws -> UpdateParallelDataOutputResponse
    {
        typealias updateParallelDataContinuation = CheckedContinuation<UpdateParallelDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateParallelDataContinuation) in
            updateParallelData(input: input) { result in
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
