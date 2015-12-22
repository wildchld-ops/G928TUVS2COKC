.class public Lcom/android/incallui/SecTabletCallVolumeObserver;
.super Landroid/database/ContentObserver;
.source "SecTabletCallVolumeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;,
        Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;
    }
.end annotation


# static fields
.field private static final mManager:Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;

    invoke-direct {v0}, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;-><init>()V

    sput-object v0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mManager:Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public static declared-synchronized addListener(Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;)V
    .locals 2

    const-class v1, Lcom/android/incallui/SecTabletCallVolumeObserver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mManager:Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->addListener(Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public static getAudioStream()I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-static {v2}, Lcom/android/incallui/SecTabletCallVolumeObserver;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/incallui/SecTabletCallVolumeObserver;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method private static getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method private static isAudio(I)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/SecTabletCallVolumeObserver;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupported(I)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/SecTabletCallVolumeObserver;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized removeListener(Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;)V
    .locals 2

    const-class v1, Lcom/android/incallui/SecTabletCallVolumeObserver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mManager:Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->removeListener(Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallVolumeObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/incallui/SecTabletCallVolumeObserver;->getAudioStream()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sget-object v1, Lcom/android/incallui/SecTabletCallVolumeObserver;->mManager:Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->onChanged(I)V

    goto :goto_0
.end method
