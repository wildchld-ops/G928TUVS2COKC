.class public Lcom/android/incallui/SecTabletCallButtonView;
.super Lcom/android/incallui/SecTabletView;
.source "SecTabletCallButtonView.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
.implements Lcom/android/incallui/SecCallButtonUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletView",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
        "Lcom/android/incallui/SecCallButtonUi;"
    }
.end annotation


# instance fields
.field protected mBluetoothButton:Landroid/widget/ToggleButton;

.field protected mEndCallButton:Landroid/widget/ImageButton;

.field protected mEndCallButtonContainer:Landroid/view/View;

.field protected mInCallButtonContainer:Landroid/view/View;

.field protected mRecordButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public aMEndButtonClick()V
    .locals 0

    return-void
.end method

.method public addCallClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    return-void
.end method

.method public animateForManager(Z)V
    .locals 0

    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public animateForRevealEndCallButton()V
    .locals 0

    return-void
.end method

.method public animateForRevealViews()V
    .locals 0

    return-void
.end method

.method public bluetoothClicked()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isBluetoothAvailable()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetoothClicked()... isBtable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallButtonView;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallButtonView;->isAudio(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/incallui/TelecomAdapter;->turnOnBluetooth(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/incallui/TelecomAdapter;->turnOnBluetooth(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonView;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecTabletInCallService()Lcom/android/incallui/SecTabletInCallService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeArrow(I)V
    .locals 0

    return-void
.end method

.method public configureOverflowMenu(ZZZZ)V
    .locals 0

    return-void
.end method

.method createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->displayDialpad(ZZ)V

    return-void
.end method

.method public enableChangeToVideoButton(Z)V
    .locals 0

    return-void
.end method

.method public enableHold(Z)V
    .locals 0

    return-void
.end method

.method public enableMute(Z)V
    .locals 0

    return-void
.end method

.method public extraVolumeClicked()V
    .locals 0

    return-void
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/SecCallButtonUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public hideVideoTogglingViews()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method protected isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method protected isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletView;->onAttachedToWindow()V

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    return-void
.end method

.method public onBackPress()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecTabletView;->onDetachedFromWindow()V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 0

    return-void
.end method

.method public returnButtonsForManager(Z)V
    .locals 0

    return-void
.end method

.method public setAudio(I)V
    .locals 0

    return-void
.end method

.method public setAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    return-void
.end method

.method public setCallButtonContainerVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFocusInCallButton(Z)V
    .locals 0

    return-void
.end method

.method public setHold(Z)V
    .locals 0

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method

.method public setPauseVideoButton(Z)V
    .locals 0

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    return-void
.end method

.method public setSwitchCameraButton(Z)V
    .locals 0

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupRcsCallButtons()V
    .locals 0

    return-void
.end method

.method public showAddCallButton(Z)V
    .locals 0

    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.ims.IMSConferenceCallActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVoiceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CONF_TYPE_VOICE"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v3, "ADD_USER_TO_CONF"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "DEL_USER_FRM_CONF"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getSecTabletInCallService()Lcom/android/incallui/SecTabletInCallService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showAudioButton(Z)V
    .locals 0

    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 0

    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method public showChangeToVideoButton(Z)V
    .locals 0

    return-void
.end method

.method public showChangeToVoiceButton(Z)V
    .locals 0

    return-void
.end method

.method public showDialpadButton(Z)V
    .locals 0

    return-void
.end method

.method public showHoldButton(Z)V
    .locals 0

    return-void
.end method

.method public showMergeButton(Z)V
    .locals 0

    return-void
.end method

.method public showOverflowButton(Z)V
    .locals 0

    return-void
.end method

.method public showPauseVideoButton(Z)V
    .locals 0

    return-void
.end method

.method public showSwapButton(Z)V
    .locals 0

    return-void
.end method

.method public showSwitchCameraButton(Z)V
    .locals 0

    return-void
.end method

.method public switchCameraClicked()V
    .locals 0

    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 0

    return-void
.end method

.method public updateButtonCleanMode(Z)V
    .locals 0

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 0

    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateDiapadButton()V
    .locals 0

    return-void
.end method

.method public updateExtraVolumeButton()V
    .locals 0

    return-void
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateRecordButton(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonView;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 0

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateVideoRecordButton()V
    .locals 0

    return-void
.end method
