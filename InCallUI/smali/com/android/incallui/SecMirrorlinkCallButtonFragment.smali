.class public Lcom/android/incallui/SecMirrorlinkCallButtonFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecMirrorlinkCallButtonFragment.java"


# static fields
.field private static mBluetoothButton:Landroid/widget/ImageButton;

.field private static mEndCallButton:Landroid/widget/ImageButton;

.field private static mHoldButton:Landroid/widget/ImageButton;

.field private static mInCallButtonViewDriveLink:Landroid/view/ViewGroup;

.field private static mMuteButton:Landroid/widget/ImageButton;

.field private static mOnHoldButton:Landroid/widget/ImageButton;

.field private static mSwapButton:Landroid/widget/ImageButton;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIsEnabled:Z

.field private mPrevAudioMode:I

.field private mPrevCallState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    iput v0, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevAudioMode:I

    iput v0, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    new-instance v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;-><init>(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->endClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->swapClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->holdClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mirrlorbluetoothClicked()V

    return-void
.end method

.method private enableVoiceCallButtons(I)V
    .locals 11

    const/4 v10, 0x4

    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/16 v5, 0xd

    if-eq p1, v5, :cond_0

    const/4 v5, 0x6

    if-ne p1, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    const/16 v5, 0x9

    if-eq p1, v5, :cond_2

    const/16 v5, 0xa

    if-ne p1, v5, :cond_3

    :cond_2
    const/4 v3, 0x0

    :cond_3
    const/4 v5, 0x3

    if-eq p1, v5, :cond_4

    const/4 v1, 0x0

    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isSupported(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v0, 0x1

    :goto_0
    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_5

    sget-object v8, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget-object v8, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_c

    if-eqz v0, :cond_c

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_5
    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_6

    sget-object v8, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget-object v8, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_6
    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_7
    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_8

    sget-object v8, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget-object v8, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_10

    if-eqz v1, :cond_10

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_8
    iget v5, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    if-eq v5, p1, :cond_9

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_9
    :goto_7
    iput p1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    move v5, v7

    goto :goto_1

    :cond_c
    move v5, v7

    goto :goto_2

    :cond_d
    move v5, v7

    goto :goto_3

    :cond_e
    move v5, v7

    goto :goto_4

    :cond_f
    move v5, v7

    goto :goto_5

    :cond_10
    move v5, v7

    goto :goto_6

    :cond_11
    if-ne p1, v9, :cond_13

    move v2, v6

    :goto_8
    if-eqz v2, :cond_14

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v5, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    if-eq v5, v10, :cond_12

    iget v5, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_12
    :goto_9
    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_7

    :cond_13
    move v2, v7

    goto :goto_8

    :cond_14
    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v5, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    if-eq v5, v10, :cond_12

    iget v5, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevCallState:I

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_9
.end method

.method private endClicked()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0
.end method

.method private holdClicked()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private mirrlorbluetoothClicked()V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->turnOnBluetooth(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->turnOnBluetooth(Z)V

    goto :goto_0
.end method

.method private swapClicked()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private updateAudioButtons()V
    .locals 7

    const/4 v4, 0x2

    const/16 v6, 0x8

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isSupported(I)Z

    move-result v1

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isSupported(I)Z

    move-result v3

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isAudio(I)Z

    move-result v0

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isAudio(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MIRRORLINK] bluetoothSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MIRRORLINK] bluetoothEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MIRRORLINK] speakerEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const-string v4, "[MIRRORLINK] default speaker on "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    :cond_0
    sget-object v4, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget-object v4, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method private updateMuteButton()V
    .locals 3

    const-string v1, "[MIRRORLINK] updateMuteButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MIRRORLINK] isMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateAudioButtons()V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->enableVoiceCallButtons(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f04005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mInCallButtonViewDriveLink:Landroid/view/ViewGroup;

    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    const v0, 0x7f100120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    const v0, 0x7f100123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    const v0, 0x7f100121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    const v0, 0x7f100122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method public setAudio(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateAudioButtons()V

    iget v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevAudioMode:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mPrevAudioMode:I

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

    iput-boolean p1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mIsEnabled:Z

    if-nez p1, :cond_5

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mBluetoothButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mOnHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateAudioButtons()V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateVoiceCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method
