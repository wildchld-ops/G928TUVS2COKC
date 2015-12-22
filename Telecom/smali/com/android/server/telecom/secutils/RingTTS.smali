.class public Lcom/android/server/telecom/secutils/RingTTS;
.super Ljava/lang/Object;
.source "RingTTS.java"


# static fields
.field private static sInstance:Lcom/android/server/telecom/secutils/RingTTS;


# instance fields
.field private bChecked:Z

.field private bStarredContact:Z

.field private mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    new-instance v0, Lcom/android/server/telecom/secutils/RingTTS$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/RingTTS$1;-><init>(Lcom/android/server/telecom/secutils/RingTTS;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/telecom/secutils/RingTTS;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/RingTTS;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/RingTTS;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    return-object v0
.end method


# virtual methods
.method public checkTTS()V
    .locals 8

    const-wide/16 v6, 0xbb8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    const-string v0, "RingTTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTTS bStattedContact : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "h_and_j_as_phone_os_up"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const-string v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public setStarredContact(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/RingTTS;->checkTTS()V

    :cond_0
    return-void
.end method

.method public stopTTS()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    :cond_1
    return-void
.end method
