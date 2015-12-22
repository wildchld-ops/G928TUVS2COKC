.class public final Lcom/android/server/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/server/telecom/CreateConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;,
        Lcom/android/server/telecom/Call$ListenerBase;,
        Lcom/android/server/telecom/Call$Listener;
    }
.end annotation


# static fields
.field private static final SHIP_BUILD:Z

.field private static final sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static final sPhotoLoadListener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;


# instance fields
.field private BeforeNumberChange:Ljava/lang/String;

.field private mCallType:I

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mCallerDualPhoneNumber:Ljava/lang/String;

.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCannedSmsResponsesLoadingStarted:Z

.field private mChildCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field private final mContext:Landroid/content/Context;

.field private mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

.field private mCreationTimeMillis:J

.field private mDirectToVoiceMailProcessed:Z

.field private mDirectToVoicemailQueryCompleted:Z

.field private final mDirectToVoicemailRunnable:Ljava/lang/Runnable;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mDisconnectTimeMillis:J

.field private mExtras:Landroid/os/Bundle;

.field private mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private mHandle:Landroid/net/Uri;

.field private mHandlePresentation:I

.field private final mHandler:Landroid/os/Handler;

.field private mIncomingVerifyedByConnectionService:Z

.field private mIsConference:Z

.field private mIsEmergencyCall:Z

.field private final mIsIncoming:Z

.field private mIsLocallyDisconnecting:Z

.field private mIsUnknown:Z

.field private mIsUserExplictSelectPhoneAccount:Z

.field private mIsVoipAudioMode:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mModifyFromVoice:Z

.field private mParentCall:Lcom/android/server/telecom/Call;

.field private mQueryToken:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

.field private mRingbackRequested:Z

.field private mSpeakerphoneOn:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private mVideoState:I

.field private mVideoStateHistory:I

.field private mWasConferencePreviouslyMerged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/telecom/Call$1;

    invoke-direct {v0}, Lcom/android/server/telecom/Call$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/Call;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    new-instance v0, Lcom/android/server/telecom/Call$2;

    invoke-direct {v0}, Lcom/android/server/telecom/Call$2;-><init>()V

    sput-object v0, Lcom/android/server/telecom/Call;->sPhotoLoadListener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;

    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Call;->SHIP_BUILD:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;-><init>(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/Call$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Call$3;-><init>(Lcom/android/server/telecom/Call;)V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailRunnable:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/telecom/Call;->mCreationTimeMillis:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/telecom/Call;->mDisconnectTimeMillis:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/Call;->mCallType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mModifyFromVoice:Z

    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoiceMailProcessed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIncomingVerifyedByConnectionService:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsConference:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponsesLoadingStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsLocallyDisconnecting:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUserExplictSelectPhoneAccount:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mWasConferencePreviouslyMerged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    if-eqz p8, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/telecom/Call;->mState:I

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/Call;->mRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    iput-boolean p7, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    iput-object p4, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p0, p5}, Lcom/android/server/telecom/Call;->setConnectionManagerPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {p0, p6}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    iput-boolean p8, p0, Lcom/android/server/telecom/Call;->mIsConference:Z

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->maybeLoadCannedSmsResponses()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZJ)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    iput-wide p9, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/Call;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/telecom/Call;->setPhoto(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/telecom/Call;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->processDirectToVoicemail()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/telecom/Call;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/telecom/Call;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/Call;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;

    return-object v0
.end method

.method private addChildCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onChildrenChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decrementAssociatedCallCount(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/ServiceBinder;->decrementAssociatedCallCount()V

    :cond_0
    return-void
.end method

.method private fixParentAfterDisconnect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method static getStateFromConnectionState(I)I
    .locals 1

    const/4 v0, 0x7

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private isRinging(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "Request to %s a non-ringing call %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private maybeLoadCannedSmsResponses()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isRespondViaSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponsesLoadingStarted:Z

    if-nez v0, :cond_0

    const-string v0, "maybeLoadCannedSmsResponses: starting task to load messages"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponsesLoadingStarted:Z

    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/Call$4;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/Call$4;-><init>(Lcom/android/server/telecom/Call;)V

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->loadCannedTextMessages(Landroid/telecom/Response;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "maybeLoadCannedSmsResponses: doing nothing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processDirectToVoicemail()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoiceMailProcessed:Z

    if-nez v0, :cond_1

    const-string v0, "processDirectToVoicemail"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_2

    const-string v0, "Directing call to voicemail: %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setState(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/telecom/Call;->mDirectToVoiceMailProcessed:Z

    :cond_1
    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->rejectCallIfShouldBe(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "this is rejected : %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1
.end method

.method private removeChildCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onChildrenChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setLocallyDisconnecting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mIsLocallyDisconnecting:Z

    return-void
.end method

.method private setPhoto(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerInfoChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldContinueProcessingAfterDisconnect()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/telecom/CreateConnectionTimeout;->isCallBeingPlaced(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v2}, Lcom/android/server/telecom/CreateConnectionProcessor;->isProcessingComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v2}, Lcom/android/server/telecom/CreateConnectionProcessor;->hasMorePhoneAccounts()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v2}, Lcom/android/server/telecom/CreateConnectionProcessor;->isCallTimedOut()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private startCallerInfoLookup()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iget v2, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    iput-object v1, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v4, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Looking up information for: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/telecom/Call;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method abort(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->isProcessingComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->abort()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCanceledViaNewOutgoingCallBroadcast(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/telecom/Call;->setLocallyDisconnecting(Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    const-string v2, "OUTGOING_CANCELED"

    invoke-direct {v0, v1, v2}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_4
    const-string v0, "Cannot abort a call which isn\'t either PRE_DIAL_WAIT or CONNECTING"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addListener(Lcom/android/server/telecom/Call$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public answer(I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/Call;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "answer"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Call;->isRinging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->answer(Lcom/android/server/telecom/Call;I)V

    goto :goto_0
.end method

.method public can(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mConnectionCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearConnectionService()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->removeCall(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Call;->decrementAssociatedCallCount(Lcom/android/server/telecom/ServiceBinder;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method conferenceWith(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    const-string v0, "conference requested on a call without a connection service."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->disconnect(Z)V

    return-void
.end method

.method disconnect(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/telecom/Call;->setLocallyDisconnecting(Z)V

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isRingbackRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCurrentToneState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCurrentToneId()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const-string v0, "Stop ringback tone in disconnecting state for noise issue."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/CallsManager;->stopRingbackPlayer(Lcom/android/server/telecom/Call;)V

    :cond_0
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-ne v0, v2, :cond_3

    :cond_1
    const-string v0, "Aborting call %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/Call;->abort(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "disconnect() request on a call without a connection service."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Send disconnect to connection service for call: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->disconnect(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public getCallType()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mCallType:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method getCallerDisplayNamePresentation()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCallerDualPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDualPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerInfo()Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object v0
.end method

.method getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public getChildCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    return-object v0
.end method

.method getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mConnectionCapabilities:I

    return v0
.end method

.method getConnectionManagerPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    return-object v0
.end method

.method getContactUri()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCreationTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/telecom/Call;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    return v0
.end method

.method public getIsVoipAudioMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsVoipAudioMode:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentCall()Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 3

    const/4 v1, 0x0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getPhotoIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getQueryToken()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    return v0
.end method

.method public getRadNumber()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_4
    const-string v0, "getRadNumber == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2
.end method

.method public getRadNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getRadNumber()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public getRingtone()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    const-string v0, "mConnectionService is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartWithSpeakerphoneOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mSpeakerphoneOn:Z

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoState:I

    return v0
.end method

.method public getVideoStateHistory()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoStateHistory:I

    return v0
.end method

.method public handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onFailedUnknownCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onFailedIncomingCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0, p1}, Lcom/android/server/telecom/Call$Listener;->onFailedOutgoingCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "handleCreateConnectionSuccessful %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/Call;->setCallerDisplayName(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setConnectionCapabilities(I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDualPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setCallerDualPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setRingbackRequested(Z)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setStatusHints(Landroid/telecom/StatusHints;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/android/server/telecom/Call$Listener;->onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/android/server/telecom/Call;->mIncomingVerifyedByConnectionService:Z

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->processDirectToVoicemail()V

    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setIsVoipAudioMode(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/Timeouts;->getDirectToVoicemailMillis(Landroid/content/ContentResolver;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/android/server/telecom/Call$Listener;->onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_3
.end method

.method public hold()V
    .locals 2

    sget-boolean v0, Lcom/android/server/telecom/Call;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->hold(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method isActive()Z
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isConference()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsConference:Z

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsEmergencyCall:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    return v0
.end method

.method public isModifyFromVoice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mModifyFromVoice:Z

    return v0
.end method

.method isRespondViaSmsCapable()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string v2, "isRespondViaSmsCapable is no RINGING : "

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/telecom/Call;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "isRespondViaSmsCapable getHandle is null "

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "isRespondViaSmsCapable isUriNumber is false "

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, "isRespondViaSmsCapable SmsApplication is false "

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->isRespondViaSmsCapable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method isRingbackRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    return v0
.end method

.method public isUserExplictSelectPhoneAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUserExplictSelectPhoneAccount:Z

    return v0
.end method

.method mergeConference()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    const-string v0, "merging conference calls without a connection service."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->mergeConference(Lcom/android/server/telecom/Call;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mWasConferencePreviouslyMerged:Z

    goto :goto_0
.end method

.method onPostDialChar(C)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0, p1}, Lcom/android/server/telecom/Call$Listener;->onPostDialChar(Lcom/android/server/telecom/Call;C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onPostDialWait(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0, p1}, Lcom/android/server/telecom/Call$Listener;->onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method playDtmfTone(C)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    const-string v0, "playDtmfTone() request on a call without a connection service."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Send playDtmfTone to connection service for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->playDtmfTone(Lcom/android/server/telecom/Call;C)V

    goto :goto_0
.end method

.method postDialContinue(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->onPostDialContinue(Lcom/android/server/telecom/Call;Z)V

    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/Call;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "reject"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Call;->isRinging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->reject(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/android/server/telecom/Call$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCallType(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/Call;->mCallType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/telecom/Call;->mCallType:I

    :cond_0
    return-void
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayNamePresentation:I

    if-eq p2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOperatorCallerDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/telecom/Call;->mCallerDisplayNamePresentation:I

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method setCallerDualPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDualPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mCallerDualPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallerInfo(Lcom/android/internal/telephony/CallerInfo;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "setCallerInfo"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v3, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startAdditionalQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V

    const-string v0, "CallerInfo received for %s: %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "Searching person uri %s for call %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    aput-object v2, v1, v4

    aput-object p0, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/telecom/Call;->sPhotoLoadListener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;

    invoke-static {p2, v0, v1, v2, p0}, Lcom/android/server/telecom/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIncomingVerifyedByConnectionService:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->processDirectToVoicemail()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerInfoChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method setConferenceableCalls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectTimeMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/Call;->setConnectionCapabilities(IZ)V

    return-void
.end method

.method setConnectionCapabilities(IZ)V
    .locals 4

    const-string v0, "setConnectionCapabilities: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/telecom/Call;->mConnectionCapabilities:I

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onConnectionCapabilitiesChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method setConnectionManagerPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onConnectionManagerPhoneAccountChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionService(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    invoke-virtual {p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->incrementAssociatedCallCount()V

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->addCall(Lcom/android/server/telecom/Call;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method setCreationTimeMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/telecom/Call;->mCreationTimeMillis:J

    return-void
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method setGatewayInfo(Landroid/telecom/GatewayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-void
.end method

.method setHandle(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    return-void
.end method

.method public setHandle(Landroid/net/Uri;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/restrictionpolicy/MdmExtension;->canShowCallerIdIncomingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    if-eq p2, v0, :cond_0

    :cond_2
    iput p2, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsEmergencyCall:Z

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->startCallerInfoLookup()V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onHandleChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsUnknown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    return-void
.end method

.method public setIsVoipAudioMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mIsVoipAudioMode:Z

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setModifyFromVoice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mModifyFromVoice:Z

    return-void
.end method

.method setParentCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "setting the parent to self"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Call;->removeChildCall(Lcom/android/server/telecom/Call;)V

    :cond_4
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Call;->addChildCall(Lcom/android/server/telecom/Call;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onParentChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method setRingbackRequested(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    iget-boolean v2, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    invoke-interface {v0, p0, v2}, Lcom/android/server/telecom/Call$Listener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStartWithSpeakerphoneOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mSpeakerphoneOn:Z

    return-void
.end method

.method public setState(I)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eq v0, p1, :cond_0

    const-string v0, "setState %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/Call;->mState:I

    invoke-static {v2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->shouldContinueProcessingAfterDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "continuing processing disconnected call with another service"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/telecom/CreateConnectionProcessor;->continueProcessingIfPossible(Lcom/android/server/telecom/CreateConnectionResponse;Landroid/telecom/DisconnectCause;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/telecom/Call;->mState:I

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->maybeLoadCannedSmsResponses()V

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    :cond_2
    iget-wide v0, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    :cond_3
    iput-wide v6, p0, Lcom/android/server/telecom/Call;->mDisconnectTimeMillis:J

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-ne v0, v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/telecom/Call;->mDisconnectTimeMillis:J

    invoke-direct {p0, v4}, Lcom/android/server/telecom/Call;->setLocallyDisconnecting(Z)V

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->fixParentAfterDisconnect()V

    goto :goto_0
.end method

.method public setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onStatusHintsChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTargetPhoneAccount() accountHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUserExplictSelectPhoneAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mIsUserExplictSelectPhoneAccount:Z

    return-void
.end method

.method public setVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-ne v0, p1, :cond_1

    const-string v0, "setVideoProvider - do not update to avoid duplication of updateCall"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public setVideoState(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoState:I

    if-ne v0, p1, :cond_1

    const-string v0, "setVideoState - do not update to avoid duplication of updateCall"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoStateHistory:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/telecom/Call;->mVideoStateHistory:I

    iput p1, p0, Lcom/android/server/telecom/Call;->mVideoState:I

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onVideoStateChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method splitFromConference()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    const-string v0, "splitting from conference call without a connection service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->splitFromConference(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCreateConnection() phoneAccountRegistrar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Lcom/android/server/telecom/CreateConnectionProcessor;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    iget-object v5, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CreateConnectionProcessor;-><init>(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceRepository;Lcom/android/server/telecom/CreateConnectionResponse;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->process()V

    return-void
.end method

.method stopDtmfTone()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    const-string v0, "stopDtmfTone() request on a call without a connection service."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Send stopDtmfTone to connection service for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->stopDtmfTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public swapConference()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    const-string v0, "swapping conference calls without a connection service."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->swapConference(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    :goto_1
    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "[%s, %s, %s, %s, %d, childs(%d), has_parent(%b), [%s]"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lcom/android/server/telecom/Call;->mState:I

    invoke-static {v6}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method unhold()V
    .locals 2

    sget-boolean v0, Lcom/android/server/telecom/Call;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->unhold(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public updateExtras(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onExtraChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method
