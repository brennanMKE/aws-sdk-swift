// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RejectAssignmentInputHeadersMiddleware: Middleware {
    public let id: String = "RejectAssignmentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RejectAssignmentInput>,
                  next: H) -> Swift.Result<OperationOutput<RejectAssignmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RejectAssignmentInput>
    public typealias MOutput = OperationOutput<RejectAssignmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RejectAssignmentOutputError>
}

public struct RejectAssignmentInputQueryItemMiddleware: Middleware {
    public let id: String = "RejectAssignmentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RejectAssignmentInput>,
                  next: H) -> Swift.Result<OperationOutput<RejectAssignmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RejectAssignmentInput>
    public typealias MOutput = OperationOutput<RejectAssignmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RejectAssignmentOutputError>
}

public struct RejectAssignmentInputBodyMiddleware: Middleware {
    public let id: String = "RejectAssignmentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RejectAssignmentInput>,
                  next: H) -> Swift.Result<OperationOutput<RejectAssignmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RejectAssignmentInput>
    public typealias MOutput = OperationOutput<RejectAssignmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RejectAssignmentOutputError>
}

extension RejectAssignmentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assignmentId = "AssignmentId"
        case requesterFeedback = "RequesterFeedback"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assignmentId = assignmentId {
            try encodeContainer.encode(assignmentId, forKey: .assignmentId)
        }
        if let requesterFeedback = requesterFeedback {
            try encodeContainer.encode(requesterFeedback, forKey: .requesterFeedback)
        }
    }
}