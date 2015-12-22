.class public Lcom/android/server/telecom/secutils/HoldTonePlayer;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "HoldTonePlayer.java"


# static fields
.field private static mCallHoldPlayer:Landroid/media/MediaPlayer;


# instance fields
.field private mCall:Lcom/android/server/telecom/Call;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private shouldStartHoldTone(Lcom/android/server/telecom/Call;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "enable_volte_hold_tone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getHoldStateOfTheOtherParty()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 1

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/HoldTonePlayer;->stopCallHoldTone()V

    invoke-direct {p0, p2}, Lcom/android/server/telecom/secutils/HoldTonePlayer;->shouldStartHoldTone(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/telecom/secutils/HoldTonePlayer;->playCallHoldTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public playCallHoldTone(Lcom/android/server/telecom/Call;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "HoldTonePlayer"

    const-string v1, "playCallHoldTone"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_2

    :try_start_1
    const-string v0, "HoldTonePlayer"

    const-string v1, "afd is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HoldTonePlayer"

    const-string v2, "close failed:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_3
    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/server/telecom/secutils/HoldTonePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/HoldTonePlayer$1;-><init>(Lcom/android/server/telecom/secutils/HoldTonePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HoldTonePlayer"

    const-string v2, "close failed:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :goto_1
    :try_start_5
    const-string v2, "HoldTonePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallHoldPlayer exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "HoldTonePlayer"

    const-string v2, "close failed:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "HoldTonePlayer"

    const-string v3, "close failed:"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/HoldTonePlayer;->playCallHoldTone(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public stopCallHoldTone()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const-string v0, "HoldTonePlayer"

    const-string v1, "Stopping call holding tone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HoldTonePlayer"

    const-string v1, "Not stopping call hold tone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
