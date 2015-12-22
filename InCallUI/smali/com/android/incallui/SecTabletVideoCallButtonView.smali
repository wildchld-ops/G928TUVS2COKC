.class public Lcom/android/incallui/SecTabletVideoCallButtonView;
.super Lcom/android/incallui/SecTabletCallButtonView;
.source "SecTabletVideoCallButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;
    }
.end annotation


# instance fields
.field protected final HIDE_INCALL_BUTTONS:I

.field protected final HIDE_INCALL_BUTTONS_DELAY:I

.field protected mDialpadButton:Landroid/widget/Button;

.field protected mEndCallButtonArea:Landroid/view/View;

.field protected mHiddenMute:Landroid/widget/ImageView;

.field protected mHiddenStop:Landroid/widget/ImageView;

.field protected mHiddenSwitchCamera:Landroid/widget/ImageView;

.field protected mHideShowButton:Landroid/widget/ToggleButton;

.field protected mInCallButtons:Landroid/view/View;

.field protected mInCallHiddenButtons:Landroid/view/View;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsEnabled:Z

.field protected mLeftButtons:Landroid/view/View;

.field protected mMiddleButtons:Landroid/view/View;

.field protected mMuteButton:Landroid/widget/ToggleButton;

.field private mPrevAudioMode:I

.field protected mRightButtons:Landroid/view/View;

.field protected mStopButton:Landroid/widget/Button;

.field protected mSwitchCameraButton:Landroid/widget/Button;

.field protected mVideoCallButtonHandler:Landroid/os/Handler;

.field protected mVideoState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mPrevAudioMode:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoState:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->HIDE_INCALL_BUTTONS:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->HIDE_INCALL_BUTTONS_DELAY:I

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletVideoCallButtonView$1;-><init>(Lcom/android/incallui/SecTabletVideoCallButtonView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    return-void
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->showRecordingInfo(ZZ)V

    return-void
.end method

.method private stopRecording()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingFarEndView(Z)V

    invoke-direct {p0, v1, v1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showRecordingInfo(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingNearEndView(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showRecordingInfo(ZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "stopRecording : There are no recording Views"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleHideShow()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleHideShow isShowMe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "camera is not allowed, return"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0d020a

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateOutgoingHideShowButton()V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateOutgoingHideShowButton()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateAudioButtons(I)V
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletVideoCallButtonView;->isSupported(I)Z

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletVideoCallButtonView;->isSupported(I)Z

    move-result v1

    return-void
.end method

.method private updateMuteButton()V
    .locals 3

    const-string v1, "updateMuteButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenMute:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenMute:Landroid/widget/ImageView;

    const v2, 0x7f020208

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenMute:Landroid/widget/ImageView;

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public deInitView()V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->deInitView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->removeListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method protected enableSwitchCamera(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    const v1, 0x7f020207

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method public hideVideoTogglingViews()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_1
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "isPossibleToHideButton : CallCardUi is null!"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->isDialpadVisible()Z

    move-result v2

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method protected isPrimaryVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPrimaryVisible()Z

    move-result v0

    return v0
.end method

.method public notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V
    .locals 1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->enableSwitchCamera(Z)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowMe:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->enableSwitchCamera(Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateCallButtons()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc9 -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x193 -> :sswitch_3
        0x194 -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    sparse-switch v0, :sswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->toggleVideoButtonContainer()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VISC"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->switchCameraClicked()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->stopRecording()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.android.incallui"

    const-string v4, "VIMU"

    invoke-static {v1, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->toggleHideShow()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->onEndCallButtonClicked()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f10002e -> :sswitch_4
        0x7f10002f -> :sswitch_3
        0x7f100033 -> :sswitch_1
        0x7f100247 -> :sswitch_0
        0x7f10024f -> :sswitch_6
        0x7f100293 -> :sswitch_5
        0x7f1002af -> :sswitch_2
    .end sparse-switch
.end method

.method protected onEndCallButtonClicked()V
    .locals 0

    return-void
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 0

    return-void
.end method

.method public setAudio(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateAudioButtons(I)V

    iget v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mPrevAudioMode:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mPrevAudioMode:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mIsEnabled:Z

    move v1, p1

    move v2, p1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d019b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateAudioButtons(I)V

    return-void
.end method

.method public setSwitchCameraButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 0

    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryVisible(Z)V

    return-void
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->showSwitchCameraAnimation(Z)V

    return-void
.end method

.method public showSwitchCameraButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public switchCameraClicked()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletVideoCallButtonView;->enableSwitchCamera(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showSwitchCameraAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setSwitchCameraClicked(Z)V

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;-><init>(Lcom/android/incallui/SecTabletVideoCallButtonView;Lcom/android/incallui/SecTabletVideoCallButtonView$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 4

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->isPossibleToHideButton()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showButtonContainer(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showButtonContainer(Z)V

    goto :goto_0
.end method

.method public updateButtonIndicatorArea()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showButtonIndicatorArea(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->showButtonIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenStop:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->enableSwitchCamera(Z)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenStop:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenStop:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHiddenStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateOutgoingHideShowButton()V
    .locals 4

    const-string v1, "updateOutgoingHideShowButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateVideoRecordButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordButton..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateCallButtons()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
