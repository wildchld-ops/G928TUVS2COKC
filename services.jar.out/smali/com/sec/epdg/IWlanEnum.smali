.class public Lcom/sec/epdg/IWlanEnum;
.super Ljava/lang/Object;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanEnum$DataState;,
        Lcom/sec/epdg/IWlanEnum$Imei;,
        Lcom/sec/epdg/IWlanEnum$PcscfConf;,
        Lcom/sec/epdg/IWlanEnum$AdapterConf;,
        Lcom/sec/epdg/IWlanEnum$IkeDhGroup;,
        Lcom/sec/epdg/IWlanEnum$IkeEapType;,
        Lcom/sec/epdg/IWlanEnum$IkeEncryption;,
        Lcom/sec/epdg/IWlanEnum$IkeIntegrity;,
        Lcom/sec/epdg/IWlanEnum$Ikeversion;,
        Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;,
        Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;,
        Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;,
        Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;,
        Lcom/sec/epdg/IWlanEnum$TunnelModeType;,
        Lcom/sec/epdg/IWlanEnum$IPSecIpType;,
        Lcom/sec/epdg/IWlanEnum$IPSecAuthType;,
        Lcom/sec/epdg/IWlanEnum$PfsState;,
        Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;,
        Lcom/sec/epdg/IWlanEnum$IdentityType;,
        Lcom/sec/epdg/IWlanEnum$WfcErrorCode;
    }
.end annotation


# static fields
.field public static final HANDOVER_FAILURE:Z = false

.field public static final HANDOVER_SUCCESS:Z = true

.field public static final IKE_GENERIC_ERROR:Ljava/lang/String; = "IKE Error"

.field public static final IKE_INTERNAL_ADDRESS_FAILURE:Ljava/lang/String; = "N/W issue:Internal Address Failure"

.field public static final IKE_INVALID_SELECTORS:Ljava/lang/String; = "N/W issue: Invalid Selectors"

.field public static final IKE_NO_ADDITIONAL_SAS:Ljava/lang/String; = "N/W issue: No additional SA\'s"

.field public static final IKE_NO_PROPOSAL_CHOSEN:Ljava/lang/String; = "N/W issue: No proposal chosen"

.field public static final IKE_TS_UNACCEPTABLE:Ljava/lang/String; = "N/W issue: TrafficSelector rejected"

.field public static final IPC_NET_ACT_1X:I = 0x13

.field public static final IPC_NET_ACT_1X_EVDO_REV_0_HYBRID:I = 0x15

.field public static final IPC_NET_ACT_1X_EVDO_REV_A_HYBRID:I = 0x17

.field public static final IPC_NET_ACT_EGPRS:I = 0x3

.field public static final IPC_NET_ACT_EVDO_REV_0:I = 0x14

.field public static final IPC_NET_ACT_EVDO_REV_A:I = 0x16

.field public static final IPC_NET_ACT_EVDV:I = 0x18

.field public static final IPC_NET_ACT_GPRS:I = 0x2

.field public static final IPC_NET_ACT_GSM:I = 0x1

.field public static final IPC_NET_ACT_GSM_UMTS:I = 0x5

.field public static final IPC_NET_ACT_IS95A:I = 0x11

.field public static final IPC_NET_ACT_IS95B:I = 0x12

.field public static final IPC_NET_ACT_IWLAN:I = 0x30

.field public static final IPC_NET_ACT_LTE:I = 0x21

.field public static final IPC_NET_ACT_NOTSPECIFIED:I = 0xff

.field public static final IPC_NET_ACT_UMTS:I = 0x4

.field public static final IPC_NET_DATA_HANDOVER_STATE_RESUME:I = 0x1

.field public static final IPC_NET_DATA_HANDOVER_STATE_SUSPEND:I = 0x0

.field public static final IPC_NET_DATA_HANDOVER_STATE_UNSPECIFIED:I = 0x2

.field public static final IWLAN_EVENT_CONNECTED_TO_TESTAPP:Ljava/lang/String; = "CONNECTED"

.field public static final IWLAN_EVENT_CONNECTION_RESET_TO_TESTAPP:Ljava/lang/String; = "Reset/IDLE"

.field public static final IWLAN_EVENT_CONNECTION_SETUP_FAILURE_TO_TESTAPP:Ljava/lang/String; = "TimeOut/IDLE"

.field public static final IWLAN_EVENT_CONNECT_INIT_TO_TESTAPP:Ljava/lang/String; = "ConnInit/IDLE"

.field public static final IWLAN_EVENT_DISCONNECTED_TO_TESTAPP:Ljava/lang/String; = "Disconn/IDLE"

.field public static final IWLAN_EVENT_ERROR_TO_TESTAPP:Ljava/lang/String; = "Error/IDLE"

.field public static final IWLAN_EVENT_MAX:I = 0x64

.field public static final IWLAN_EVENT_PEER_DISCONNECTED_TO_TESTAPP:Ljava/lang/String; = "PeerDel/IDLE"

.field public static final IWLAN_EVENT_UNKNOWN_TO_TESTAPP:Ljava/lang/String; = "UNKNOWN/IDLE"

.field public static IWLAN_MAX_SETTING:I = 0x0

.field public static final LTE_DATA_RETRY:I = 0x1

.field public static final LTE_RETRY_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,0,0,0,60000:15000,120000,480000,900000"

.field public static final PERM_NWFAILURE_DATA_RETRY:I = 0x2

.field public static final PERM_NWFAILURE_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,3600000"

.field public static final WIFI_DEREGISTER:I = 0x1

.field public static final WIFI_REGISTER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toTestAppEventStatus(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN/IDLE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "Disconn/IDLE"

    goto :goto_0

    :pswitch_2
    const-string v0, "PeerDel/IDLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "TimeOut/IDLE"

    goto :goto_0

    :pswitch_4
    const-string v0, "Reset/IDLE"

    goto :goto_0

    :pswitch_5
    const-string v0, "Error/IDLE"

    goto :goto_0

    :pswitch_6
    const-string v0, "ConnInit/IDLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
