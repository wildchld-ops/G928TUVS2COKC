.class public final Lcom/android/server/telecom/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;
    }
.end annotation


# static fields
.field private static mCdmaIsSecondCallActive:Z

.field public static mLastIndex:I


# instance fields
.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothCallState:I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

.field private mCdmaActiveCallCount:I

.field private mCdmaCall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mClccIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/telecom/Call;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetUpdatedRecently:Z

.field private mNumActiveCalls:I

.field private mNumHeldCalls:I

.field private mOldHeldCall:Lcom/android/server/telecom/Call;

.field private mOtherNumHeldCalls:I

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingingAddress:Ljava/lang/String;

.field private mRingingAddressType:I

.field private mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    sput v0, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$1;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$2;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$3;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$4;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$5;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$5;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Constructor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->enforceModifyPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/BluetoothPhoneService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/BluetoothPhoneService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/telecom/BluetoothPhoneService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I

    return p1
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/server/telecom/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/BluetoothPhoneService;II)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/BluetoothPhoneService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/BluetoothPhoneService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/telecom/BluetoothPhoneService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->processChld(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getBestPhoneAccount()Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V

    return-void
.end method

.method private convertCallState(IZ)I
    .locals 2

    const/4 v0, 0x6

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private enforceModifyPermission()V
    .locals 2

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getActiveCallCount()I
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveCallCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getBestPhoneAccount()Landroid/telecom/PhoneAccount;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomGlobals;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "tel"

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :cond_2
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBestPhoneAccount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getBluetoothCallStateForUpdate()I
    .locals 7

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getDialingCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "chn_cdma_network_on_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const-string v4, "feature_multisim_dsda"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v1

    move-object v2, v1

    :goto_0
    const/4 v1, 0x6

    if-eqz v3, :cond_2

    const/4 v0, 0x4

    :cond_1
    :goto_1
    return v0

    :cond_2
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_0

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method private getCallsManager()Lcom/android/server/telecom/CallsManager;
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    return-object v0
.end method

.method private getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method private getCdmaFirstCall()Lcom/android/server/telecom/Call;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCdmaLatestCall()Lcom/android/server/telecom/Call;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaCall:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_1
.end method

.method private getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentCallPhoneType, Defalut Phonetype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentCallPhoneType, Current Phonetype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    goto :goto_0
.end method

.method private getIndexForCall(Lcom/android/server/telecom/Call;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processChld(I)Z
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getDialingCall()Lcom/android/server/telecom/Call;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v7

    const-string v8, "BluetoothPhoneService"

    const-string v9, "Active: %s\nBluetoothPhoneService: Ringing: %s\nBluetoothPhoneService: Held: %s\nBluetoothPhoneService: Dialing: %s\nBluetoothPhoneService: Foreground: %s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v0

    aput-object v4, v10, v1

    aput-object v5, v10, v11

    aput-object v6, v10, v13

    aput-object v7, v10, v12

    invoke-static {v8, v9, v10}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHLD Value is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v8

    if-le p1, v12, :cond_2

    const/16 v9, 0xa

    if-ge p1, v9, :cond_1

    const-string v1, "BluetoothPhoneService"

    const-string v2, "Invlaid CHLD"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-int/lit8 v9, p1, 0xa

    div-int/lit8 p1, p1, 0xa

    if-ne v8, v11, :cond_3

    const-string v8, "BluetoothPhoneService"

    const-string v9, "CDMA Network can\'t control ECC"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_6

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v9}, Lcom/android/server/telecom/BluetoothPhoneService;->processChldIdx(II)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    if-ne p1, v1, :cond_d

    if-eqz v7, :cond_a

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    invoke-virtual {v2, v7}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    if-eqz v4, :cond_9

    invoke-direct {p0, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v0

    if-ne v0, v11, :cond_8

    invoke-virtual {v2, v4}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    :cond_8
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_9
    if-eqz v5, :cond_8

    invoke-virtual {v5, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    :cond_b
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_c
    if-eqz v5, :cond_b

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    goto :goto_2

    :cond_d
    if-ne p1, v11, :cond_12

    if-eqz v3, :cond_e

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_11

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :cond_12
    if-ne p1, v13, :cond_0

    if-eqz v3, :cond_14

    invoke-virtual {v3, v12}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/telecom/CallsManager;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto/16 :goto_0

    :cond_13
    const-string v2, "BluetoothPhoneService"

    const-string v4, "Call mergeConference()"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v0}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->mergeConference()V

    move v0, v1

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto/16 :goto_0
.end method

.method private sendClccEndMarker()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private sendClccForCall(ILcom/android/server/telecom/Call;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->convertCallState(IZ)I

    move-result v3

    const/4 v1, 0x6

    if-ne v3, v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_8

    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_9

    const/4 v7, -0x1

    :goto_6
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "chn_cdma_network_on_all_rat"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_f

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v1

    const-string v4, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cdmaIsMergable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v8, v9}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaFirstCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaLatestCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaFirstCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaLatestCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Not use call state"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    :cond_9
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_6

    :cond_a
    if-eqz v5, :cond_c

    if-eqz v1, :cond_c

    const-string v1, "BluetoothPhoneService"

    const-string v4, "is Part Of Conference call!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    :goto_7
    const-string v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v4

    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    if-nez v0, :cond_e

    const-string v0, "BluetoothPhoneService"

    const-string v1, "DSDA hold one Call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    move v3, v1

    :goto_8
    if-eqz p3, :cond_b

    const-string v0, "BluetoothPhoneService"

    const-string v1, "sending clcc for call %d, %d, %d, %b, %s, %d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x4

    invoke-static {v6}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaFirstCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaFirstCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_d

    const-string v1, "BluetoothPhoneService"

    const-string v3, "hold First Call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_d
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaLatestCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaLatestCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->getCdmaAddress(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v1, :cond_f

    const-string v1, "BluetoothPhoneService"

    const-string v3, "hold Second Call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_e
    move v3, v1

    goto/16 :goto_8

    :cond_f
    move v1, v3

    goto/16 :goto_7
.end method

.method private sendListOfCalls(Z)V
    .locals 4

    const/4 v2, 0x0

    sput v2, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getIndexForCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->sendClccForCall(ILcom/android/server/telecom/Call;Z)V

    goto :goto_1

    :cond_2
    const-string v0, "BluetoothPhoneService"

    const-string v1, "There isn\'t any Call, Clear mClccIndexMap"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->sendClccEndMarker()V

    return-void
.end method

.method private sendSynchronousRequest(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendSynchronousRequest(II)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "This method will deadlock if called from the main thread."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    # getter for: Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->RESULT_NOT_SET:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->access$1700()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v0, v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "BluetoothPhoneService"

    const-string v3, "InterruptedException"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final setSwap()V
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private updateHeadsetWithCallState(Z)V
    .locals 14

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    const/4 v0, -0x1

    const-string v4, "feature_multisim_dsda"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState! mOtherNumHeldCalls==1 phoneId = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v0

    const-string v4, "BluetoothPhoneService"

    const-string v5, "updateHeadsetWithCallState! phoneId = %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState!  activeCall,ringingCall,heldCall == null!!  phoneId = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getBluetoothCallStateForUpdate()I

    move-result v8

    const/4 v5, 0x0

    const/16 v4, 0x80

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    move-object v2, v5

    :goto_1
    if-nez v2, :cond_17

    const-string v2, ""

    move-object v5, v2

    :goto_2
    if-nez v3, :cond_4

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v4

    const-string v9, "support_mobilecarrier"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_3
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Do not play the BluetoothHeadset ringtone when carrier-phone RelaxMode."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const-string v9, "feature_multisim_dsda"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v2, :cond_16

    if-nez v4, :cond_16

    const-string v2, "BluetoothPhoneService"

    const-string v4, "updateHeadsetWithCallState! numActiveCalls,numHeldCalls == 0"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v4, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_9

    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState! change phoneId to 1 %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    :goto_4
    if-nez v3, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v1

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    :goto_6
    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    if-ne v2, v4, :cond_6

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    if-ne v0, v4, :cond_6

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    if-ne v8, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    if-ne v6, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    if-ne v1, v4, :cond_6

    if-eqz p1, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;

    sget v9, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;

    sget v10, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    const/4 v4, 0x6

    if-ne v9, v4, :cond_7

    const/4 v4, 0x6

    if-eq v10, v4, :cond_12

    :cond_7
    const-string v4, "BluetoothPhoneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "foregroundVoIPCall : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", backgroundVoIPCall : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v11, v12}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    :cond_8
    const-string v7, "BluetoothPhoneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mForegroundCallState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bluetoothCallState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v9, :cond_b

    iget v7, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    const/4 v11, 0x4

    if-ne v7, v11, :cond_b

    const-string v0, "BluetoothPhoneService"

    const-string v1, "VoIP Call is ACTIVE. Send +CIEV 7,2, +CIEV:2,1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState! change phoneId to 0 %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_b
    const/4 v7, 0x1

    if-ne v10, v7, :cond_c

    const/4 v7, 0x5

    if-ne v4, v7, :cond_c

    const-string v0, "BluetoothPhoneService"

    const-string v1, "VoIP Call is HOLDING. +CIEV:7,1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x1

    if-ne v10, v7, :cond_d

    const/4 v7, 0x7

    if-eq v4, v7, :cond_f

    :cond_d
    const/4 v7, 0x1

    if-ne v10, v7, :cond_e

    iget v7, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    const/4 v11, 0x6

    if-eq v7, v11, :cond_f

    :cond_e
    if-nez v9, :cond_10

    if-nez v4, :cond_10

    :cond_f
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Resuming VoIP Call. Do not Send CIEV 1,0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x1

    if-ne v10, v7, :cond_11

    if-nez v4, :cond_11

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Reject incomming CS Call. Send CIEV 2,0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_11
    const/4 v7, 0x1

    if-ne v10, v7, :cond_12

    const/16 v7, 0x9

    if-ne v4, v7, :cond_12

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Disconnecting CS Call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v3

    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "chn_cdma_network_on_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_14

    const-string v0, "BluetoothPhoneService"

    const-string v3, "set held state"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_14
    iget v7, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v9, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iput v8, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iput-object v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iput v6, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState numActive %s, numHeld %s, callState %s, ringing number %s, ringing type %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    if-ne v0, v9, :cond_0

    iget v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_15
    move-object v2, v1

    goto/16 :goto_4

    :cond_16
    move v0, v4

    goto/16 :goto_6

    :cond_17
    move-object v5, v2

    goto/16 :goto_2

    :cond_18
    move v6, v4

    move-object v2, v5

    goto/16 :goto_1

    :cond_19
    move v6, v4

    move-object v2, v5

    goto/16 :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Binding service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {v0}, Lcom/android/server/telecom/BluetoothVoIPService;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService shutting down, no BT Adapter found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    invoke-direct {p0, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->removeListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public declared-synchronized processChldIdx(II)Z
    .locals 10

    const/4 v9, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process CHLD Idx, Chld :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " idx :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->enforceModifyPermission()V

    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->convertCallState(IZ)I

    move-result v7

    if-eq v7, v9, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getIndexForCall(Lcom/android/server/telecom/Call;)I

    move-result v7

    if-ne p2, v7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const-string v0, "BluetoothPhoneService"

    const-string v2, "Wrong idx value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    if-ne p1, v2, :cond_4

    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to hangup "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v6, 0x2

    if-ne p1, v6, :cond_a

    const-string v1, "BluetoothPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hold all Calls except, idx : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_5

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    if-ne v1, v9, :cond_6

    :cond_5
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Idx call is waiting or held call object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_1

    :cond_6
    const-string v1, "BluetoothPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "foregroundCall: %s / isConference: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v1, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Heldcall Num : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Merging calls"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v4, v5, v0}, Lcom/android/server/telecom/CallsManager;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    :cond_7
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Separate the Call : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->splitFromConference()V

    move v0, v2

    goto/16 :goto_1

    :cond_8
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Separate the Call : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->splitFromConference()V

    move v0, v2

    goto/16 :goto_1

    :cond_9
    const-string v0, "BluetoothPhoneService"

    const-string v1, "ForegroundCall is null or idx call is not conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_1

    :cond_a
    const-string v0, "BluetoothPhoneService"

    const-string v2, "not supported ECC chld"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
