.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$CanAddCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static mPressedButtonTime:J

.field private static sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mPreviousMuteState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallButtonPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/CallButtonPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "updateCallButtons() call is null"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateVideoCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateNotUpdatingCalls(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/incallui/CallList;->addNotUpdatingCall(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateRcsElelements(Lcom/android/incallui/Call;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallButtonUi;->getPromotedButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/SecCallButtonUi;->getShareButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/incallui/rcs/RcsShareUI;->prepareRcsUiElements(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;ZLcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->setupRcsCallButtons()V

    :cond_0
    return-void
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v5, 0x0

    const-string v6, "Updating call UI for call: "

    invoke-static {p0, v6, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz p2, :cond_a

    const/4 v2, 0x1

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    if-nez v1, :cond_5

    if-nez v3, :cond_6

    :cond_5
    const/4 v2, 0x0

    :cond_6
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUi : isAutoAnswered - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- isEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    if-nez v2, :cond_b

    invoke-interface {v4, v5, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    move v2, v5

    goto :goto_2

    :cond_b
    invoke-interface {v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lcom/android/incallui/CallButtonPresenter;->updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_c
    const/16 v5, 0x40

    invoke-virtual {p2, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableMute(Z)V

    goto/16 :goto_0
.end method

.method private updateVideoCallButtons(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Showing buttons for video call."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAudioButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialpadButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwapButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVideoButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showOverflowButton(Z)V

    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVoiceButton(Z)V

    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchCameraButton(Z)V

    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showPauseVideoButton(Z)V

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-interface {v2, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    invoke-interface {v2, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    :goto_0
    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 14

    const-string v12, "Showing buttons for voice call."

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVoiceButton(Z)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchCameraButton(Z)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showPauseVideoButton(Z)V

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAudioButton(Z)V

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialpadButton(Z)V

    const-string v12, "Show hold "

    const/4 v13, 0x2

    invoke-virtual {p1, v13}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v12, "Enable hold"

    const/4 v13, 0x1

    invoke-virtual {p1, v13}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v12, "Show merge "

    const/4 v13, 0x4

    invoke-virtual {p1, v13}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v12, "Show swap "

    const/16 v13, 0x8

    invoke-virtual {p1, v13}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v12, "Show add call "

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v13

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v12, "Show mute "

    const/16 v13, 0x40

    invoke-virtual {p1, v13}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v0

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const/4 v12, 0x2

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v10

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4

    const/4 v3, 0x1

    :goto_0
    const/16 v12, 0x100

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x200

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v11, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVideoButton(Z)V

    if-nez v3, :cond_6

    const/4 v12, 0x1

    :goto_2
    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableChangeToVideoButton(Z)V

    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v8

    move v6, v0

    const/16 v12, 0x8

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    if-nez v9, :cond_7

    if-nez v2, :cond_0

    if-eqz v10, :cond_7

    :cond_0
    const/4 v7, 0x1

    :goto_3
    invoke-interface {v11, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    if-eqz v1, :cond_8

    if-nez v6, :cond_1

    if-eqz v8, :cond_8

    :cond_1
    if-nez v7, :cond_2

    if-eqz v9, :cond_8

    :cond_2
    const/4 v5, 0x1

    :goto_4
    if-nez v7, :cond_3

    if-eqz v9, :cond_9

    :cond_3
    if-eqz v8, :cond_9

    if-eqz v6, :cond_9

    const/4 v4, 0x1

    :goto_5
    if-eqz v5, :cond_b

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwapButton(Z)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    const/4 v12, 0x1

    :goto_6
    invoke-interface {v11, v8, v6, v12, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->configureOverflowMenu(ZZZZ)V

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showOverflowButton(Z)V

    :goto_7
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v11, v8, v6, v12, v13}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->configureOverflowMenu(ZZZZ)V

    :goto_8
    invoke-interface {v11, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showOverflowButton(Z)V

    invoke-interface {v11, v7}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    invoke-interface {v11, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    invoke-interface {v11, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwapButton(Z)V

    goto :goto_7

    :cond_c
    invoke-interface {v11, v8}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    invoke-interface {v11, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    goto :goto_8
.end method


# virtual methods
.method public CallPlusClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v3, "CallPlusClicked: "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public PromotedClicked(Z)V
    .locals 5

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PromotedClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock.uptimeMillis(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPressedButtonTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    sget v0, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    if-le v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    if-gt v0, v4, :cond_0

    const-string v0, " Battery low"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->showBatteryError(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public ShareClicked(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_2
    sget v0, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    if-le v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsSharingDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_3
    const-string v0, " Battery low for ISH"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public addCallClicked()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->markAsAddCall(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->minimizeCallScreen()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    return-void
.end method

.method public changeSideArrow(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSideArrow()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/incallui/InCallUtils;->putOneHandDirection(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->changeArrow(I)V

    :cond_0
    return-void
.end method

.method public changeToVideoClicked()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public changeToVoiceClicked()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method public endCallClicked()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "tmo_echolocate_logger"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->END_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v3}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateNotUpdatingCalls(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getCurrentArrowSide()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getOneHandDirection(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getSecUi()Lcom/android/incallui/SecCallButtonUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    instance-of v1, v0, Lcom/android/incallui/SecCallButtonUi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/incallui/SecCallButtonUi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public holdClicked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Putting the call on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing the call from hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

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

.method public mergeClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    return-void
.end method

.method public muteClicked(Z)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turning on mute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    const-string v1, "tmo_echolocate_logger"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->MUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v1}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteClicked() sendMuteButtonStatus()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNMUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v1}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    :cond_0
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_2
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    const-string v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSecUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-interface {v0, v1}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_5

    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    :cond_1
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, v4, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    :cond_3
    :goto_0
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange : isAutoAnswered - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v1, v4, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v2}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    :goto_1
    return-void

    :cond_5
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_a

    invoke-static {p3, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "onStateChange - not update because of conference ended"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    :cond_7
    const/4 v0, 0x0

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_8

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    :goto_2
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v1, v5, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    :cond_8
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-interface {v1, v4, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2, v3}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v0

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_c

    if-eqz v1, :cond_b

    invoke-interface {v1, v4, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    :cond_b
    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto/16 :goto_0

    :cond_c
    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto/16 :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onUiReady()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 1

    const-string v0, "onUiResume"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onUiUnready()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    new-instance v2, Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setPauseVideoButton(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    new-instance v2, Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_1
.end method

.method public refreshMuteState()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v1, :cond_0

    const-string v1, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    const-string v1, "EmergencyCall unmute"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public showDialpadClicked(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public speakerClicked()V
    .locals 3

    const/16 v2, 0x8

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFolerClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0d0224

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0
.end method

.method public swapClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapping the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCameraClicked(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    invoke-virtual {v1}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-nez p1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSwitchCameraButton(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toggleBluetooth()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v2, "toggleBluetooth()..."

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasAliveVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->turnOnBluetooth(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasAliveVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->turnOnBluetooth(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public toggleSpeakerphone()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const-string v0, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto :goto_0
.end method
