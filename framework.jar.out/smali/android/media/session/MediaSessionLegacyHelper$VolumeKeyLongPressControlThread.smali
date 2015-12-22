.class Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;
.super Ljava/lang/Thread;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeKeyLongPressControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:I

.field private final DURATION_REPEAT:I

.field private final MAX_REPEAT:I

.field private mDirection:I

.field private mFlags:I

.field private mNeedToRun:Z

.field private mSleepDuration:I

.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 1

    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->DURATION_REPEAT:I

    const/16 v0, 0x190

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->MAX_REPEAT:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSessionLegacyHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;-><init>(Landroid/media/session/MediaSessionLegacyHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->access$000(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const-string v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volumekey long press repeat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_2

    const/16 v1, 0x32

    iput v1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    :cond_2
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->access$100(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/high16 v2, -0x80000000

    iget v3, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mDirection:I

    iget v4, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mFlags:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateInfo(IIZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mDirection:I

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    iput-boolean p3, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    iput p2, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mFlags:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
