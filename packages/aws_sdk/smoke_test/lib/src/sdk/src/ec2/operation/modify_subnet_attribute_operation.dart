// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.operation.modify_subnet_attribute_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_subnet_attribute_request.dart'
    as _i2;

/// Modifies a subnet attribute. You can only modify one attribute at a time.
///
/// Use this action to modify subnets on Amazon Web Services Outposts.
///
/// *   To modify a subnet on an Outpost rack, set both `MapCustomerOwnedIpOnLaunch` and `CustomerOwnedIpv4Pool`. These two parameters act as a single attribute.
///
/// *   To modify a subnet on an Outpost server, set either `EnableLniAtDeviceIndex` or `DisableLniAtDeviceIndex`.
///
///
/// For more information about Amazon Web Services Outposts, see the following:
///
/// *   [Outpost servers](https://docs.aws.amazon.com/outposts/latest/userguide/how-servers-work.html)
///
/// *   [Outpost racks](https://docs.aws.amazon.com/outposts/latest/userguide/how-racks-work.html)
class ModifySubnetAttributeOperation extends _i1.HttpOperation<
    _i2.ModifySubnetAttributeRequest,
    _i2.ModifySubnetAttributeRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Modifies a subnet attribute. You can only modify one attribute at a time.
  ///
  /// Use this action to modify subnets on Amazon Web Services Outposts.
  ///
  /// *   To modify a subnet on an Outpost rack, set both `MapCustomerOwnedIpOnLaunch` and `CustomerOwnedIpv4Pool`. These two parameters act as a single attribute.
  ///
  /// *   To modify a subnet on an Outpost server, set either `EnableLniAtDeviceIndex` or `DisableLniAtDeviceIndex`.
  ///
  ///
  /// For more information about Amazon Web Services Outposts, see the following:
  ///
  /// *   [Outpost servers](https://docs.aws.amazon.com/outposts/latest/userguide/how-servers-work.html)
  ///
  /// *   [Outpost racks](https://docs.aws.amazon.com/outposts/latest/userguide/how-racks-work.html)
  ModifySubnetAttributeOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ModifySubnetAttributeRequest,
          _i2.ModifySubnetAttributeRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i4.Ec2QueryProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ModifySubnetAttribute',
      version: '2016-11-15',
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ModifySubnetAttributeRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ModifySubnetAttribute';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.ModifySubnetAttributeRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
