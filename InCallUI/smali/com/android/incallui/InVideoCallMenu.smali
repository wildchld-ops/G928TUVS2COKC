.class public Lcom/android/incallui/InVideoCallMenu;
.super Lcom/android/incallui/InCallMenu;
.source "InVideoCallMenu.java"


# instance fields
.field private final DIALOG_FOR_RECORDING:I

.field private final DIALOG_OUTGOING_IMAGE:I

.field private final DIALOG_SNA_INFO:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsSelectedImage:Z

.field private mOutgoingImageDialog:Landroid/app/AlertDialog;

.field private mOutgoingImageList:[Ljava/lang/String;

.field private mUniqueMenuItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/InVideoCallMenu;->DIALOG_OUTGOING_IMAGE:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/incallui/InVideoCallMenu;->DIALOG_SNA_INFO:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/InVideoCallMenu;->DIALOG_FOR_RECORDING:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z

    const-string v0, "InVideoCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateIncomingVideoCallButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/InVideoCallMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/InVideoCallMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/InVideoCallMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->captureSurfaceImage(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/InVideoCallMenu;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/InVideoCallMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private captureSurfaceImage(Z)V
    .locals 4

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/InVideoCallMenu$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/InVideoCallMenu$5;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->captureSurfaceImage(Z)V

    return-void
.end method

.method private checkHoldMenu()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_4

    :cond_0
    :goto_1
    return v5

    :cond_1
    if-eqz v3, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private checkShowHideMenu()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "concept_usa_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "vt_cmcc_operator_open_close_camera"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->mdmGetAllowCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InVideoCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "vt_cmcc_operator_open_close_camera"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private checkSwitchToDeviceMenu()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clickedCaptureImage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->captureSurfaceImage(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->capture_farend_view()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->showFarEndCaptureAnimation()V

    goto :goto_0
.end method

.method private clickedDualCamera(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->dualCamera(Z)V

    :cond_0
    return-void
.end method

.method private clickedImageEffect()V
    .locals 1

    const-string v0, "camera_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowingEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->showCameraEffectLayout(Z)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateSwitchButtonLayout()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateCameraEffectLayout()V

    goto :goto_0
.end method

.method private clickedKeypad(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui"

    const-string v2, "KYPD"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/secui/SecUiAdapter;->displayDialpad(ZZ)V

    return-void
.end method

.method private clickedOutgoingImage()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->hideCameraEffectLayout()V

    return-void
.end method

.method private clickedResizeScreen(Z)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "resize_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setScreenResized(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoInCallResize(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setScreenResized(Z)V

    goto :goto_0
.end method

.method private clickedSpeaker(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->canUpdateVTSpeakerState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->setAudioMode(I)V

    goto :goto_0
.end method

.method private clickedStartRecord()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->startRecordingFarEndView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InVideoCallMenu;->showRecordingInfo(ZZ)V

    :cond_0
    return-void
.end method

.method private clickedStopRecord()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingFarEndView(Z)V

    invoke-direct {p0, v1, v1}, Lcom/android/incallui/InVideoCallMenu;->showRecordingInfo(ZZ)V

    :cond_0
    return-void
.end method

.method private clickedSwitchCamera()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->switchCameraClicked()V

    return-void
.end method

.method private clickedVideoConfCall()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->showAddUserForConferenceCall()V

    return-void
.end method

.method private getConferenceCallManagerShowingState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getSwitchToDeviceMenuTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private hideCameraEffectLayout()V
    .locals 1

    const-string v0, "camera_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowingEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->showCameraEffectLayout(Z)V

    :cond_0
    return-void
.end method

.method private isDialpadVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InVideoCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InVideoCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private manageAddCallMenu(Landroid/view/Menu;)V
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    const v5, 0x7f10035d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    const-string v5, "concept_usa_att"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "concept_usa_tmo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "common_volte_in"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ui_for_mpcs"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "concept_canada_common"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manageAddCallMenu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageCaptureImageMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v2, 0x7f100362

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "concept_usa_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "video_call_remove_record_button"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarFrameReady()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private manageDualCameraMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method private manageHideShowMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v3, 0x7f10035f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f100360

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "concept_usa_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "vt_cmcc_operator_open_close_camera"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->mdmGetAllowCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InVideoCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v3, "vt_cmcc_operator_open_close_camera"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageHoldMenu(Landroid/view/Menu;)V
    .locals 9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    const v7, 0x7f100030

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v7, "concept_usa_att"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "concept_usa_tmo"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "concept_canada_common"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    if-eqz v6, :cond_1

    move-object v1, v6

    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return-void

    :cond_1
    if-eqz v5, :cond_2

    move-object v1, v5

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    move-object v1, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    const v7, 0x7f0d0154

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkHoldMenu()Z

    move-result v3

    :cond_5
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    const v7, 0x7f0d0158

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private manageImageEffectMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v2, 0x7f10035e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "camera_effect"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private manageKeypadMenu(Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageManageConfCallMenu(Landroid/view/Menu;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    const v3, 0x7f100371

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "concept_usa_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ui_for_mpcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    and-int v1, v3, v4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manageConfCallButton: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageOutgoingImageMenu(Landroid/view/Menu;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    const v8, 0x7f100361

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v8, "ui_for_kor"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0d01e1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v5, 0x0

    const-string v8, "outgoing_image_from_gallery"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    move v5, v7

    :goto_0
    if-eqz v5, :cond_8

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v1

    :goto_2
    const-string v8, "concept_jpn_dcm"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_b

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    return-void

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    const-string v8, "concept_canada_common"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "concept_usa_common"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    move v5, v7

    :goto_4
    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_4

    :cond_8
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v8

    if-nez v8, :cond_a

    move v1, v7

    :goto_5
    goto :goto_2

    :cond_a
    move v1, v6

    goto :goto_5

    :cond_b
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private manageRecordMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v4, 0x7f100363

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f100364

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v4, 0x7f100365

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "video_call_remove_record_button"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageResizeScreenMenu(Landroid/view/Menu;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v6, 0x7f10036e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f10036d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v6, "resize_screen"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    const-string v6, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarFrameReady()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->isScreenResized()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move v6, v7

    :goto_0
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    move v6, v7

    :goto_2
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    :goto_3
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_4
    move v6, v8

    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_2

    :cond_7
    move v7, v8

    goto :goto_3
.end method

.method private manageSpeakerMenu(Landroid/view/Menu;)V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    const v11, 0x7f100367

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v11, 0x7f100368

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v6, 0x0

    const-string v11, "concept_usa_vzw"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "no_earpiece_in_tablet"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v3, :cond_7

    move v4, v10

    :goto_1
    const/4 v2, 0x1

    if-eqz v6, :cond_b

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    return-void

    :cond_2
    const-string v11, "ui_for_kor"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    move v6, v10

    :goto_4
    goto :goto_0

    :cond_4
    move v6, v9

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    move v6, v10

    :goto_5
    goto :goto_0

    :cond_6
    move v6, v9

    goto :goto_5

    :cond_7
    move v4, v9

    goto :goto_1

    :cond_8
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/TelecomAdapter;->wasVTSpeakerOn()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secservice/SecVideoCallManager;->canUpdateVTSpeakerState()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    :cond_b
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private manageSwitchToDeviceMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v3, 0x7f100369

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f10036a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageVideoConfCallMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v3, 0x1

    const-string v4, "video_conference"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v4, 0x20000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    const v4, 0x7f100370

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareOptionsForEasyMode(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageHideShowMenu(Landroid/view/Menu;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f10035f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCameraEffectLayout(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->showCameraEffectLayout(Z)V

    return-void
.end method

.method private showConferenceCallManager()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->showConferenceCallManager()V

    return-void
.end method

.method private showDialog(I)V
    .locals 13

    const v12, 0x7f0d020f

    const/4 v11, 0x2

    const v10, 0x7f0d020e

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v6, "ui_for_kor"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v2, 0x7f0d01e1

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v4

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f0d01e0

    goto :goto_0

    :sswitch_0
    const-string v6, "ui_for_kor"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "common_volte_in"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    :goto_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    new-instance v8, Lcom/android/incallui/InVideoCallMenu$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/InVideoCallMenu$1;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecUiAdapter;->getSecTabletInCallService()Lcom/android/incallui/SecTabletInCallService;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_3
    const-string v6, "outgoing_image_from_gallery"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0212

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0211

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-array v6, v11, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0211

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v6, "ui_for_kor"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0212

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0211

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v6, "ui_for_chn"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v6

    if-eqz v6, :cond_8

    new-array v6, v11, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v6, "concept_jpn_dcm"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v6

    if-eqz v6, :cond_9

    new-array v6, v11, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0211

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0210

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_1
    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v7, 0x7f04001c

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x1020001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/InVideoCallMenu$2;

    invoke-direct {v6, p0, v5}, Lcom/android/incallui/InVideoCallMenu$2;-><init>(Lcom/android/incallui/InVideoCallMenu;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d0129

    new-instance v8, Lcom/android/incallui/InVideoCallMenu$4;

    invoke-direct {v8, p0}, Lcom/android/incallui/InVideoCallMenu$4;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d01fb

    new-instance v8, Lcom/android/incallui/InVideoCallMenu$3;

    invoke-direct {v8, p0}, Lcom/android/incallui/InVideoCallMenu$3;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    :cond_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecUiAdapter;->getSecTabletInCallService()Lcom/android/incallui/SecTabletInCallService;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->showRecordingInfo(ZZ)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateVideoRecordButton()V

    return-void
.end method

.method private updateIncomingVideoCallButton()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateIncomingHideButton()V

    return-void
.end method

.method private updateVideoCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->addCallClicked()V

    return-void
.end method

.method public clickedHideMe()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->hideCameraEffectLayout()V

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0335

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    :cond_0
    return-void
.end method

.method public clickedShowMe()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d020a

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0336

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public clickedSwitchToDevice()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->bluetoothClicked()V

    return-void
.end method

.method public dismissDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public getShowHideMenuTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d018a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUniqueMenuItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    return-object v0
.end method

.method public holdClicked(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Putting the call on hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing the call from hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isExistOptionsItem()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkShowHideMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->getShowHideMenuTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkSwitchToDeviceMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSwitchToDeviceMenuTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method mdmGetAllowCamera()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getAllowCamera()Z

    move-result v0

    :cond_0
    return v0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraEnabled()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- optionsItemSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  title: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionsItemSelected("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), but null mContext!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const-string v2, "InVideoCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (MenuItem = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->addCallClicked()V

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    move v1, v3

    :goto_2
    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/InVideoCallMenu;->holdClicked(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedImageEffect()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedHideMe()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedShowMe()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedOutgoingImage()V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedCaptureImage()V

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedStartRecord()V

    goto :goto_1

    :sswitch_8
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedStopRecord()V

    goto :goto_1

    :sswitch_9
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchCamera()V

    goto :goto_1

    :sswitch_a
    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->clickedKeypad(Z)V

    goto :goto_1

    :sswitch_b
    invoke-direct {p0, v6}, Lcom/android/incallui/InVideoCallMenu;->clickedSpeaker(I)V

    goto :goto_1

    :sswitch_c
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/incallui/InVideoCallMenu;->clickedSpeaker(I)V

    goto :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToDevice()V

    goto :goto_1

    :sswitch_e
    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->clickedResizeScreen(Z)V

    goto :goto_1

    :sswitch_f
    invoke-direct {p0, v2}, Lcom/android/incallui/InVideoCallMenu;->clickedResizeScreen(Z)V

    goto :goto_1

    :sswitch_10
    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->clickedDualCamera(Z)V

    goto :goto_1

    :sswitch_11
    invoke-direct {p0, v2}, Lcom/android/incallui/InVideoCallMenu;->clickedDualCamera(Z)V

    goto :goto_1

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToDevice()V

    goto :goto_1

    :sswitch_13
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedVideoConfCall()V

    goto :goto_1

    :sswitch_14
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->showConferenceCallManager()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f100030 -> :sswitch_1
        0x7f10035d -> :sswitch_0
        0x7f10035e -> :sswitch_2
        0x7f10035f -> :sswitch_3
        0x7f100360 -> :sswitch_4
        0x7f100361 -> :sswitch_5
        0x7f100362 -> :sswitch_6
        0x7f100363 -> :sswitch_7
        0x7f100364 -> :sswitch_8
        0x7f100365 -> :sswitch_9
        0x7f100366 -> :sswitch_a
        0x7f100367 -> :sswitch_b
        0x7f100368 -> :sswitch_c
        0x7f100369 -> :sswitch_d
        0x7f10036a -> :sswitch_d
        0x7f10036b -> :sswitch_10
        0x7f10036c -> :sswitch_11
        0x7f10036d -> :sswitch_e
        0x7f10036e -> :sswitch_f
        0x7f10036f -> :sswitch_12
        0x7f100370 -> :sswitch_13
        0x7f100371 -> :sswitch_14
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const-string v3, "prepareOptionsMenu()..."

    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->prepareOptionsForEasyMode(Landroid/view/Menu;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageAddCallMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageHoldMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageImageEffectMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_4
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMHS"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageHideShowMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_5
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMOI"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageOutgoingImageMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_6
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMCI"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageCaptureImageMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_7
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMRV"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageRecordMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_8
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMKP"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f100366

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InVideoCallMenu;->manageKeypadMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_9
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMSP"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageSpeakerMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_a
    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.android.incallui"

    const-string v5, "VMLS"

    const-string v6, "VMSH"

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageSwitchToDeviceMenu(Landroid/view/Menu;)V

    goto :goto_2

    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageResizeScreenMenu(Landroid/view/Menu;)V

    goto/16 :goto_2

    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageDualCameraMenu(Landroid/view/Menu;)V

    goto/16 :goto_2

    :sswitch_d
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageVideoConfCallMenu(Landroid/view/Menu;)V

    goto/16 :goto_2

    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageManageConfCallMenu(Landroid/view/Menu;)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100030 -> :sswitch_2
        0x7f10035d -> :sswitch_1
        0x7f10035e -> :sswitch_3
        0x7f10035f -> :sswitch_0
        0x7f100360 -> :sswitch_4
        0x7f100361 -> :sswitch_5
        0x7f100362 -> :sswitch_6
        0x7f100363 -> :sswitch_0
        0x7f100364 -> :sswitch_7
        0x7f100366 -> :sswitch_8
        0x7f100367 -> :sswitch_0
        0x7f100368 -> :sswitch_9
        0x7f100369 -> :sswitch_0
        0x7f10036a -> :sswitch_a
        0x7f10036b -> :sswitch_0
        0x7f10036c -> :sswitch_c
        0x7f10036d -> :sswitch_0
        0x7f10036e -> :sswitch_b
        0x7f100370 -> :sswitch_d
        0x7f100371 -> :sswitch_e
    .end sparse-switch
.end method
