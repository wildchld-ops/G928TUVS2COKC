.class public Lcom/android/incallui/VideoCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;",
        "Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;",
        "Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;"
    }
.end annotation


# static fields
.field private static sVideoCallPresenter:Lcom/android/incallui/VideoCallPresenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceOrientation:I

.field private mIsFullScreen:Z

.field private mIsVideoCall:Z

.field private mMinimumVideoDimension:F

.field private mPreVideoAudioMode:I

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mSessionModificationResetHandler:Landroid/os/Handler;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method private changeVideoCall(Landroid/telecom/InCallService$VideoCall;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-void
.end method

.method private checkForVideoCallChange()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->changeVideoCall(Landroid/telecom/InCallService$VideoCall;)V

    :cond_0
    return-void
.end method

.method private checkForVideoStateChange()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0
.end method

.method private enterVideoMode()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->enterVideoMode(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-interface {v1, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoUi(Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isActivityRestart()Z

    move-result v2

    if-nez v2, :cond_0

    iput v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    :cond_6
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isDisplayVideoSurfaceCreated()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/VideoCallPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/VideoCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/VideoCallPresenter;->sVideoCallPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/VideoCallPresenter;->sVideoCallPresenter:Lcom/android/incallui/VideoCallPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallPresenter;->sVideoCallPresenter:Lcom/android/incallui/VideoCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSecVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private setPreviewSize(IF)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v2, v3

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v0, v3

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSize(II)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v2, v3

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v0, v3

    goto :goto_1
.end method

.method private updateSecUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "Updating call UI for call: "

    invoke-static {p0, v0, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/incallui/SecVideoCallUi;->setCallState(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getDisconnectingOrDisconnectedCall(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/incallui/SecVideoCallUi;->changeOrientaiton(I)V

    goto :goto_0
.end method


# virtual methods
.method public exitVideoMode()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->exitVideoMode(Lcom/android/incallui/Call;)V

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoUi(Z)V

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    iput v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    goto :goto_1
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSecUi()Lcom/android/incallui/SecVideoCallUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    instance-of v1, v0, Lcom/android/incallui/SecVideoCallUi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/incallui/SecVideoCallUi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Landroid/os/Handler;

    return-void
.end method

.method public onAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/Call;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    :cond_2
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSize(IF)V

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isPreviewVideoSurfaceCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecVideoCallUi;->invalidateUi()V

    goto :goto_0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->needToUpdateDetailsChanged(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoStateChange()V

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->getSecTabletInCallService()Lcom/android/incallui/SecTabletInCallService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/incallui/SecTabletInCallService;->mIsVTConfCall:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/SecTabletInCallService;->mIsVTConfCall:Z

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletInCallService;->updateCallUI()V

    goto :goto_0
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChange()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {p3, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p1, p2, :cond_4

    iget-boolean v5, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eq v5, v0, :cond_a

    :cond_4
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoCallChange()V

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    iget-boolean v3, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode()V

    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->getSecVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/incallui/secservice/SecVideoCallManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v3}, Lcom/android/incallui/VideoCallPresenter;->updateSecUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_7

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_8

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_8
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_3

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_9
    move v0, v4

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_4

    :cond_c
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_4
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange()V

    :cond_0
    return-void
.end method

.method public onUiResume()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onUpgradeToVideoFail(Lcom/android/incallui/Call;)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method
