.class public Lcom/android/incallui/SecDrivelinkCallButtonFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecDrivelinkCallButtonFragment.java"


# static fields
.field private static mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mCancelButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mIncallFrame:Landroid/widget/LinearLayout;

.field private static mIncallHoldFrame:Landroid/widget/LinearLayout;

.field private static mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mUnholdButton:Lcom/android/incallui/SecDrivelinkButton;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mPrevAudioMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mPrevAudioMode:I

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;-><init>(Lcom/android/incallui/SecDrivelinkCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private enableVoiceCallButtons(I)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v4, 0x9

    if-ne p1, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v0, 0x1

    const/16 v4, 0xd

    if-eq p1, v4, :cond_1

    const/4 v4, 0x6

    if-ne p1, v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :cond_3
    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v4, :cond_4

    sget-object v7, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_4
    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v4, :cond_5

    sget-object v7, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_5
    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_6
    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v4, v1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_7
    return-void

    :cond_8
    move v4, v6

    goto :goto_0

    :cond_9
    move v4, v6

    goto :goto_1

    :cond_a
    move v5, v6

    goto :goto_2
.end method

.method private showVoiceCallButtons(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallHoldFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallHoldFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallHoldFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallHoldFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->isSupported(I)Z

    move-result v1

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->isSupported(I)Z

    move-result v3

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->isAudio(I)Z

    move-result v0

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->isAudio(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetoothEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speakerEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v4, v0}, Lcom/android/incallui/SecDrivelinkButton;->setChecked(Z)V

    sget-object v4, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v4, v2}, Lcom/android/incallui/SecDrivelinkButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->updateMuteButton()V

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

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v1, v0}, Lcom/android/incallui/SecDrivelinkButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f10011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f100120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f10011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mUnholdButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f10011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mCancelButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f100119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallHoldFrame:Landroid/widget/LinearLayout;

    const v0, 0x7f10011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mIncallFrame:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mUnholdButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mUnholdButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mCancelButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mCancelButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public setAudio(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->updateAudioButtons(I)V

    iget v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mPrevAudioMode:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mPrevAudioMode:I

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
    .locals 1

    if-nez p1, :cond_3

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mBluetoothButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mSpeakerButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_1
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mMuteButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_2
    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->mEndCallButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->updateAudioButtons(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->enableVoiceCallButtons(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->showVoiceCallButtons(I)V

    goto :goto_0
.end method
