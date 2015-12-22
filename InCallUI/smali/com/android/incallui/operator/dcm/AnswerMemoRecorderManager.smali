.class public Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;,
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;,
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCall:Lcom/android/incallui/Call;

.field private mInCallActivity:Lcom/android/incallui/SecInCallActivity;

.field private mIsPaused:Z

.field private mIsRecording:Z

.field private mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnswerMemoRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnswerMemoRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/SecInCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    return-object v0
.end method


# virtual methods
.method public getRecordTime()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordTime() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return v0
.end method

.method public onAMRecorderStateChanged()V
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    const-string v4, "AnswerMemoRecorderManager"

    const-string v5, "mCall is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_8

    const-string v4, "AnswerMemoRecorderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAMRecorderStateChanged - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_9

    :cond_1
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v7, :cond_a

    move v4, v3

    :goto_1
    invoke-interface {v5, v4}, Lcom/android/incallui/SecCallCardUi;->manageAnswerMemoRecord(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCallPopupService;->updateAnswerMemoRecordTime()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    :cond_5
    :goto_2
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "voice_call_recording_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/incallui/SecCallButtonUi;->updateRecordButton(Z)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    :cond_8
    return-void

    :cond_9
    move v1, v2

    goto/16 :goto_0

    :cond_a
    move v4, v2

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    goto :goto_2
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v2, 0x1

    const-string v3, "AnswerMemoRecorderManager"

    const-string v4, "onDisconnect: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public startRecord(Lcom/android/incallui/Call;)V
    .locals 4

    :try_start_0
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecorderSrv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startService()V
    .locals 10

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    iput-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v7, v4}, Lcom/android/incallui/SecInCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "startService()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iget-object v8, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/incallui/SecInCallActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "bindService()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "AnswerMemoRecorderManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not start service - IllegalArgumentException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "can not bind service"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "can not start service"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 10

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    iput-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "startService()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "bindService()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "AnswerMemoRecorderManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not start service - IllegalArgumentException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "can not bind service"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "can not start service"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "stopRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->stopRecord()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopService()V
    .locals 10

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v7, :cond_2

    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "stopService()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iget-object v8, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    invoke-interface {v7, v8}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iget-object v8, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/android/incallui/SecInCallActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v7, v4}, Lcom/android/incallui/SecInCallActivity;->stopService(Landroid/content/Intent;)Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v7, "AnswerMemoRecorderManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stopService() -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopService(Landroid/content/Context;)V
    .locals 10

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v7, :cond_2

    const-string v7, "AnswerMemoRecorderManager"

    const-string v8, "stopService()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iget-object v8, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    invoke-interface {v7, v8}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v7, "AnswerMemoRecorderManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stopService() -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
