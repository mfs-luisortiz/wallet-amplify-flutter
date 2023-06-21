// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.client_vpn_endpoint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_target_network.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_response_options.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_response_options.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_response_options.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/transport_protocol.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_protocol.dart' as _i3;

part 'client_vpn_endpoint.g.dart';

/// Describes a Client VPN endpoint.
abstract class ClientVpnEndpoint
    with _i1.AWSEquatable<ClientVpnEndpoint>
    implements Built<ClientVpnEndpoint, ClientVpnEndpointBuilder> {
  /// Describes a Client VPN endpoint.
  factory ClientVpnEndpoint({
    String? clientVpnEndpointId,
    String? description,
    _i2.ClientVpnEndpointStatus? status,
    String? creationTime,
    String? deletionTime,
    String? dnsName,
    String? clientCidrBlock,
    List<String>? dnsServers,
    bool? splitTunnel,
    _i3.VpnProtocol? vpnProtocol,
    _i4.TransportProtocol? transportProtocol,
    int? vpnPort,
    @Deprecated('This property is deprecated. To view the target networks associated with a Client VPN endpoint, call DescribeClientVpnTargetNetworks and inspect the clientVpnTargetNetworks response element.')
        List<_i5.AssociatedTargetNetwork>? associatedTargetNetworks,
    String? serverCertificateArn,
    List<_i6.ClientVpnAuthentication>? authenticationOptions,
    _i7.ConnectionLogResponseOptions? connectionLogOptions,
    List<_i8.Tag>? tags,
    List<String>? securityGroupIds,
    String? vpcId,
    String? selfServicePortalUrl,
    _i9.ClientConnectResponseOptions? clientConnectOptions,
    int? sessionTimeoutHours,
    _i10.ClientLoginBannerResponseOptions? clientLoginBannerOptions,
  }) {
    splitTunnel ??= false;
    vpnPort ??= 0;
    sessionTimeoutHours ??= 0;
    return _$ClientVpnEndpoint._(
      clientVpnEndpointId: clientVpnEndpointId,
      description: description,
      status: status,
      creationTime: creationTime,
      deletionTime: deletionTime,
      dnsName: dnsName,
      clientCidrBlock: clientCidrBlock,
      dnsServers: dnsServers == null ? null : _i11.BuiltList(dnsServers),
      splitTunnel: splitTunnel,
      vpnProtocol: vpnProtocol,
      transportProtocol: transportProtocol,
      vpnPort: vpnPort,
      associatedTargetNetworks: associatedTargetNetworks == null
          ? null
          : _i11.BuiltList(associatedTargetNetworks),
      serverCertificateArn: serverCertificateArn,
      authenticationOptions: authenticationOptions == null
          ? null
          : _i11.BuiltList(authenticationOptions),
      connectionLogOptions: connectionLogOptions,
      tags: tags == null ? null : _i11.BuiltList(tags),
      securityGroupIds:
          securityGroupIds == null ? null : _i11.BuiltList(securityGroupIds),
      vpcId: vpcId,
      selfServicePortalUrl: selfServicePortalUrl,
      clientConnectOptions: clientConnectOptions,
      sessionTimeoutHours: sessionTimeoutHours,
      clientLoginBannerOptions: clientLoginBannerOptions,
    );
  }

  /// Describes a Client VPN endpoint.
  factory ClientVpnEndpoint.build(
      [void Function(ClientVpnEndpointBuilder) updates]) = _$ClientVpnEndpoint;

  const ClientVpnEndpoint._();

  static const List<_i12.SmithySerializer> serializers = [
    ClientVpnEndpointEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnEndpointBuilder b) {
    b.splitTunnel = false;
    b.vpnPort = 0;
    b.sessionTimeoutHours = 0;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// A brief description of the endpoint.
  String? get description;

  /// The current state of the Client VPN endpoint.
  _i2.ClientVpnEndpointStatus? get status;

  /// The date and time the Client VPN endpoint was created.
  String? get creationTime;

  /// The date and time the Client VPN endpoint was deleted, if applicable.
  String? get deletionTime;

  /// The DNS name to be used by clients when connecting to the Client VPN endpoint.
  String? get dnsName;

  /// The IPv4 address range, in CIDR notation, from which client IP addresses are assigned.
  String? get clientCidrBlock;

  /// Information about the DNS servers to be used for DNS resolution.
  _i11.BuiltList<String>? get dnsServers;

  /// Indicates whether split-tunnel is enabled in the Client VPN endpoint.
  ///
  /// For information about split-tunnel VPN endpoints, see [Split-Tunnel Client VPN endpoint](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html) in the _Client VPN Administrator Guide_.
  bool get splitTunnel;

  /// The protocol used by the VPN session.
  _i3.VpnProtocol? get vpnProtocol;

  /// The transport protocol used by the Client VPN endpoint.
  _i4.TransportProtocol? get transportProtocol;

  /// The port number for the Client VPN endpoint.
  int get vpnPort;

  /// Information about the associated target networks. A target network is a subnet in a VPC.
  @Deprecated(
      'This property is deprecated. To view the target networks associated with a Client VPN endpoint, call DescribeClientVpnTargetNetworks and inspect the clientVpnTargetNetworks response element.')
  _i11.BuiltList<_i5.AssociatedTargetNetwork>? get associatedTargetNetworks;

  /// The ARN of the server certificate.
  String? get serverCertificateArn;

  /// Information about the authentication method used by the Client VPN endpoint.
  _i11.BuiltList<_i6.ClientVpnAuthentication>? get authenticationOptions;

  /// Information about the client connection logging options for the Client VPN endpoint.
  _i7.ConnectionLogResponseOptions? get connectionLogOptions;

  /// Any tags assigned to the Client VPN endpoint.
  _i11.BuiltList<_i8.Tag>? get tags;

  /// The IDs of the security groups for the target network.
  _i11.BuiltList<String>? get securityGroupIds;

  /// The ID of the VPC.
  String? get vpcId;

  /// The URL of the self-service portal.
  String? get selfServicePortalUrl;

  /// The options for managing connection authorization for new client connections.
  _i9.ClientConnectResponseOptions? get clientConnectOptions;

  /// The maximum VPN session duration time in hours.
  ///
  /// Valid values: `8 | 10 | 12 | 24`
  ///
  /// Default value: `24`
  int get sessionTimeoutHours;

  /// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  _i10.ClientLoginBannerResponseOptions? get clientLoginBannerOptions;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        description,
        status,
        creationTime,
        deletionTime,
        dnsName,
        clientCidrBlock,
        dnsServers,
        splitTunnel,
        vpnProtocol,
        transportProtocol,
        vpnPort,
        associatedTargetNetworks,
        serverCertificateArn,
        authenticationOptions,
        connectionLogOptions,
        tags,
        securityGroupIds,
        vpcId,
        selfServicePortalUrl,
        clientConnectOptions,
        sessionTimeoutHours,
        clientLoginBannerOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnEndpoint');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'deletionTime',
      deletionTime,
    );
    helper.add(
      'dnsName',
      dnsName,
    );
    helper.add(
      'clientCidrBlock',
      clientCidrBlock,
    );
    helper.add(
      'dnsServers',
      dnsServers,
    );
    helper.add(
      'splitTunnel',
      splitTunnel,
    );
    helper.add(
      'vpnProtocol',
      vpnProtocol,
    );
    helper.add(
      'transportProtocol',
      transportProtocol,
    );
    helper.add(
      'vpnPort',
      vpnPort,
    );
    helper.add(
      'associatedTargetNetworks',
      associatedTargetNetworks,
    );
    helper.add(
      'serverCertificateArn',
      serverCertificateArn,
    );
    helper.add(
      'authenticationOptions',
      authenticationOptions,
    );
    helper.add(
      'connectionLogOptions',
      connectionLogOptions,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'securityGroupIds',
      securityGroupIds,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'selfServicePortalUrl',
      selfServicePortalUrl,
    );
    helper.add(
      'clientConnectOptions',
      clientConnectOptions,
    );
    helper.add(
      'sessionTimeoutHours',
      sessionTimeoutHours,
    );
    helper.add(
      'clientLoginBannerOptions',
      clientLoginBannerOptions,
    );
    return helper.toString();
  }
}

class ClientVpnEndpointEc2QuerySerializer
    extends _i12.StructuredSmithySerializer<ClientVpnEndpoint> {
  const ClientVpnEndpointEc2QuerySerializer() : super('ClientVpnEndpoint');

  @override
  Iterable<Type> get types => const [
        ClientVpnEndpoint,
        _$ClientVpnEndpoint,
      ];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnEndpoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnEndpointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ClientVpnEndpointStatus),
          ) as _i2.ClientVpnEndpointStatus));
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deletionTime':
          result.deletionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dnsName':
          result.dnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientCidrBlock':
          result.clientCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dnsServer':
          result.dnsServers.replace((const _i12.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i12.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i11.BuiltList,
              [FullType(String)],
            ),
          ) as _i11.BuiltList<String>));
        case 'splitTunnel':
          result.splitTunnel = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'vpnProtocol':
          result.vpnProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.VpnProtocol),
          ) as _i3.VpnProtocol);
        case 'transportProtocol':
          result.transportProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.TransportProtocol),
          ) as _i4.TransportProtocol);
        case 'vpnPort':
          result.vpnPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'associatedTargetNetwork':
          result.associatedTargetNetworks
              .replace((const _i12.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i12.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i11.BuiltList,
              [FullType(_i5.AssociatedTargetNetwork)],
            ),
          ) as _i11.BuiltList<_i5.AssociatedTargetNetwork>));
        case 'serverCertificateArn':
          result.serverCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'authenticationOptions':
          result.authenticationOptions
              .replace((const _i12.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i12.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i11.BuiltList,
              [FullType(_i6.ClientVpnAuthentication)],
            ),
          ) as _i11.BuiltList<_i6.ClientVpnAuthentication>));
        case 'connectionLogOptions':
          result.connectionLogOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ConnectionLogResponseOptions),
          ) as _i7.ConnectionLogResponseOptions));
        case 'tagSet':
          result.tags.replace((const _i12.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i12.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i11.BuiltList,
              [FullType(_i8.Tag)],
            ),
          ) as _i11.BuiltList<_i8.Tag>));
        case 'securityGroupIdSet':
          result.securityGroupIds.replace((const _i12.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i12.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i11.BuiltList,
              [FullType(String)],
            ),
          ) as _i11.BuiltList<String>));
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'selfServicePortalUrl':
          result.selfServicePortalUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientConnectOptions':
          result.clientConnectOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.ClientConnectResponseOptions),
          ) as _i9.ClientConnectResponseOptions));
        case 'sessionTimeoutHours':
          result.sessionTimeoutHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'clientLoginBannerOptions':
          result.clientLoginBannerOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i10.ClientLoginBannerResponseOptions),
          ) as _i10.ClientLoginBannerResponseOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientVpnEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i12.XmlElementName(
        'ClientVpnEndpointResponse',
        _i12.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnEndpoint(
      :clientVpnEndpointId,
      :description,
      :status,
      :creationTime,
      :deletionTime,
      :dnsName,
      :clientCidrBlock,
      :dnsServers,
      :splitTunnel,
      :vpnProtocol,
      :transportProtocol,
      :vpnPort,
      :associatedTargetNetworks,
      :serverCertificateArn,
      :authenticationOptions,
      :connectionLogOptions,
      :tags,
      :securityGroupIds,
      :vpcId,
      :selfServicePortalUrl,
      :clientConnectOptions,
      :sessionTimeoutHours,
      :clientLoginBannerOptions
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i12.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i12.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i12.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(_i2.ClientVpnEndpointStatus),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i12.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(String),
        ));
    }
    if (deletionTime != null) {
      result$
        ..add(const _i12.XmlElementName('DeletionTime'))
        ..add(serializers.serialize(
          deletionTime,
          specifiedType: const FullType(String),
        ));
    }
    if (dnsName != null) {
      result$
        ..add(const _i12.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          dnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (clientCidrBlock != null) {
      result$
        ..add(const _i12.XmlElementName('ClientCidrBlock'))
        ..add(serializers.serialize(
          clientCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (dnsServers != null) {
      result$
        ..add(const _i12.XmlElementName('DnsServer'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dnsServers,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i12.XmlElementName('SplitTunnel'))
      ..add(serializers.serialize(
        splitTunnel,
        specifiedType: const FullType(bool),
      ));
    if (vpnProtocol != null) {
      result$
        ..add(const _i12.XmlElementName('VpnProtocol'))
        ..add(serializers.serialize(
          vpnProtocol,
          specifiedType: const FullType.nullable(_i3.VpnProtocol),
        ));
    }
    if (transportProtocol != null) {
      result$
        ..add(const _i12.XmlElementName('TransportProtocol'))
        ..add(serializers.serialize(
          transportProtocol,
          specifiedType: const FullType.nullable(_i4.TransportProtocol),
        ));
    }
    result$
      ..add(const _i12.XmlElementName('VpnPort'))
      ..add(serializers.serialize(
        vpnPort,
        specifiedType: const FullType(int),
      ));
    if (associatedTargetNetworks != null) {
      result$
        ..add(const _i12.XmlElementName('AssociatedTargetNetwork'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associatedTargetNetworks,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i5.AssociatedTargetNetwork)],
          ),
        ));
    }
    if (serverCertificateArn != null) {
      result$
        ..add(const _i12.XmlElementName('ServerCertificateArn'))
        ..add(serializers.serialize(
          serverCertificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (authenticationOptions != null) {
      result$
        ..add(const _i12.XmlElementName('AuthenticationOptions'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          authenticationOptions,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i6.ClientVpnAuthentication)],
          ),
        ));
    }
    if (connectionLogOptions != null) {
      result$
        ..add(const _i12.XmlElementName('ConnectionLogOptions'))
        ..add(serializers.serialize(
          connectionLogOptions,
          specifiedType: const FullType(_i7.ConnectionLogResponseOptions),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i12.XmlElementName('TagSet'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i8.Tag)],
          ),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i12.XmlElementName('SecurityGroupIdSet'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i12.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (selfServicePortalUrl != null) {
      result$
        ..add(const _i12.XmlElementName('SelfServicePortalUrl'))
        ..add(serializers.serialize(
          selfServicePortalUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (clientConnectOptions != null) {
      result$
        ..add(const _i12.XmlElementName('ClientConnectOptions'))
        ..add(serializers.serialize(
          clientConnectOptions,
          specifiedType: const FullType(_i9.ClientConnectResponseOptions),
        ));
    }
    result$
      ..add(const _i12.XmlElementName('SessionTimeoutHours'))
      ..add(serializers.serialize(
        sessionTimeoutHours,
        specifiedType: const FullType(int),
      ));
    if (clientLoginBannerOptions != null) {
      result$
        ..add(const _i12.XmlElementName('ClientLoginBannerOptions'))
        ..add(serializers.serialize(
          clientLoginBannerOptions,
          specifiedType: const FullType(_i10.ClientLoginBannerResponseOptions),
        ));
    }
    return result$;
  }
}
