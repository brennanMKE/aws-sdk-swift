// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateSkillWithSkillGroupInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateSkillWithSkillGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateSkillWithSkillGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateSkillWithSkillGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateSkillWithSkillGroupInput>
    public typealias MOutput = OperationOutput<AssociateSkillWithSkillGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateSkillWithSkillGroupOutputError>
}

public struct AssociateSkillWithSkillGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateSkillWithSkillGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateSkillWithSkillGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateSkillWithSkillGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateSkillWithSkillGroupInput>
    public typealias MOutput = OperationOutput<AssociateSkillWithSkillGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateSkillWithSkillGroupOutputError>
}

public struct AssociateSkillWithSkillGroupInputBodyMiddleware: Middleware {
    public let id: String = "AssociateSkillWithSkillGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateSkillWithSkillGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateSkillWithSkillGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateSkillWithSkillGroupInput>
    public typealias MOutput = OperationOutput<AssociateSkillWithSkillGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateSkillWithSkillGroupOutputError>
}

extension AssociateSkillWithSkillGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case skillGroupArn = "SkillGroupArn"
        case skillId = "SkillId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let skillGroupArn = skillGroupArn {
            try encodeContainer.encode(skillGroupArn, forKey: .skillGroupArn)
        }
        if let skillId = skillId {
            try encodeContainer.encode(skillId, forKey: .skillId)
        }
    }
}