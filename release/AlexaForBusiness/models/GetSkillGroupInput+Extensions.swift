// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSkillGroupInputHeadersMiddleware: Middleware {
    public let id: String = "GetSkillGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSkillGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSkillGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSkillGroupInput>
    public typealias MOutput = OperationOutput<GetSkillGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSkillGroupOutputError>
}

public struct GetSkillGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSkillGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSkillGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSkillGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSkillGroupInput>
    public typealias MOutput = OperationOutput<GetSkillGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSkillGroupOutputError>
}

public struct GetSkillGroupInputBodyMiddleware: Middleware {
    public let id: String = "GetSkillGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSkillGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSkillGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetSkillGroupInput>
    public typealias MOutput = OperationOutput<GetSkillGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSkillGroupOutputError>
}

extension GetSkillGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case skillGroupArn = "SkillGroupArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let skillGroupArn = skillGroupArn {
            try encodeContainer.encode(skillGroupArn, forKey: .skillGroupArn)
        }
    }
}