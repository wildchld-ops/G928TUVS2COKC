.class public Lcom/android/incallui/SecVoiceCallButtonFolderFragment;
.super Lcom/android/incallui/SecVoiceCallButtonFragment;
.source "SecVoiceCallButtonFolderFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;-><init>()V

    return-void
.end method

.method private enableRecordButtonForFolder()V
    .locals 2

    const-string v1, "enableRecordButtonForFolder"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateForMoveDialpad(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mInCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mInCallButtonsUpper:Landroid/view/View;

    const v0, 0x7f10024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    const v0, 0x7f10024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_1
    const v0, 0x7f10024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_2
    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mDialpadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f100245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mRecordButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->enableRecordButtonForFolder()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->updateDiapadButton()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04012c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->enableRecordButtonForFolder()V

    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDiapadButton()V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->isDialpadVisible()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDiapadButton..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method
