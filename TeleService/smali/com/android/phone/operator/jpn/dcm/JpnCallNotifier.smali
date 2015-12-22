.class public Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;
.super Landroid/os/Handler;
.source "JpnCallNotifier.java"

# interfaces
.implements Lcom/android/phone/operator/OperatorCallNotifier;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mApp:Lcom/android/phone/PhoneGlobals;

.field private mCallRingbackToneHandle:Landroid/media/MediaPlayer;

.field private mNetworkRequestStopLocalRBT:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousCallType:Lcom/android/internal/telephony/Call$CallType;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1    # Lcom/android/phone/PhoneGlobals;
    .param p2    # Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "JpnCallNotifier"

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mNetworkRequestStopLocalRBT:Z

    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousCallType:Lcom/android/internal/telephony/Call$CallType;

    const-string v0, "JpnCallNotifier create"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JpnCallNotifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->registerForNotifications()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private dealJPNRingBackToneWhenPhoneStateChange()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviousGsmCallState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mNetworkRequestStopLocalRBT:Z

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->sendPlayRingBackToneDelay()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mNetworkRequestStopLocalRBT:Z

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->stopPlayJPNRingBackTone()V

    :cond_4
    return-void
.end method

.method private getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1    # Landroid/os/AsyncResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mNetworkRequestStopLocalRBT:Z

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousCallType:Lcom/android/internal/telephony/Call$CallType;

    :cond_0
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->dealJPNRingBackToneWhenPhoneStateChange()V

    iput-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iput-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;Z)V
    .locals 7
    .param p1    # Landroid/os/AsyncResult;
    .param p2    # Z

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRingbackTone, playTone:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mNetworkRequestStopLocalRBT:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const-string v3, "mNetworkRequestStopLocalRBT is true, skip play local RBT"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v2, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mNetworkRequestStopLocalRBT:Z

    :cond_2
    if-ne v2, v4, :cond_6

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-eq v3, v6, :cond_4

    move v1, v4

    :goto_2
    iget-object v3, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_5

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->startPlayJPNRingBackTone(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->stopPlayJPNRingBackTone()V

    goto :goto_0
.end method

.method private playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/media/MediaPlayer$OnCompletionListener;
    .param p4    # I
    .param p5    # Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz v0, :cond_8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v6, 0x0

    :goto_1
    return-object v1

    :catch_0
    move-exception v8

    iget-object v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "close failed:"

    const/4 v4, 0x1

    invoke-static {v2, v3, v8, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const v1, 0x7f080003

    if-ne p2, v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_2
    if-nez p3, :cond_3

    new-instance v7, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$1;

    invoke-direct {v7, p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$1;-><init>(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;)V

    move-object p3, v7

    :cond_3
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    if-nez p5, :cond_5

    new-instance v1, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$2;-><init>(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    const/4 v6, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-virtual {v0, p5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :cond_6
    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    const/4 v6, 0x0

    :cond_8
    :goto_5
    const/4 v1, 0x0

    goto :goto_1

    :catch_2
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_3

    :catch_3
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_4

    :catch_4
    move-exception v8

    :try_start_7
    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v0, 0x0

    :cond_9
    if-eqz v6, :cond_a

    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_a
    :goto_6
    const/4 v6, 0x0

    goto :goto_5

    :catch_5
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_6

    :catch_6
    move-exception v8

    :try_start_9
    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v0, 0x0

    :cond_b
    if-eqz v6, :cond_c

    :try_start_a
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_c
    :goto_7
    const/4 v6, 0x0

    goto :goto_5

    :catch_7
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_7

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_d

    :try_start_b
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_d
    :goto_8
    const/4 v6, 0x0

    throw v1

    :catch_8
    move-exception v8

    iget-object v2, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "close failed:"

    const/4 v4, 0x1

    invoke-static {v2, v3, v8, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_8
.end method

.method private registerForNotifications()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private sendPlayRingBackToneDelay()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "sendPlayRingBackToneDelay"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;Z)V

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startPlayJPNRingBackTone(Landroid/content/Context;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlayJPNRingBackTone : excuted - mCallRingbackToneHandle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const v2, 0x7f080003

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private stopPlayJPNRingBackTone()V
    .locals 2

    const/4 v1, 0x4

    const-string v0, "stopPlayJPNRingBackTone : excuted"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mCallRingbackToneHandle:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "MSG_PRECISE_CALL_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "PHONE_DISCONNECT"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->removeMessages(I)V

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->onRingbackTone(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->onRingbackTone(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 1

    const-string v0, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->registerForNotifications()V

    return-void
.end method
