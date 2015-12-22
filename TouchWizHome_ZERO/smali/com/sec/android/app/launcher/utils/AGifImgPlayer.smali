.class public Lcom/sec/android/app/launcher/utils/AGifImgPlayer;
.super Ljava/lang/Object;
.source "AGifImgPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/AGifImgPlayer$1;,
        Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;
    }
.end annotation


# static fields
.field public static final MAX_SUPPORTED_AGIF_SIZE:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "AGifImgPlayer"


# instance fields
.field private filename:Ljava/lang/String;

.field private mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;

.field private mCurrentTime:J

.field private mFrameDuration:I

.field private volatile mIsCancelled:Z

.field private mIsLooping:Z

.field private mLastImage:Landroid/graphics/Bitmap;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mPlayBackwards:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/views/AGifImageView;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsCancelled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPaused:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mFrameDuration:I

    iput-object v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    iput-wide v4, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    iput-wide v4, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsLooping:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPlayBackwards:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsCancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Lcom/sec/android/app/launcher/views/AGifImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mFrameDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method private streamToBytes(Ljava/io/InputStream;I)[B
    .locals 4

    new-array v0, p2, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v3, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eq v2, p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isFinished()Z
    .locals 6

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsLooping:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadGIF(Landroid/content/Context;I)Z
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_2
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized loadGIF(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p2, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->filename:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->filename:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "AGifImgPlayer"

    const-string v4, "InputStream is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->loadGIF(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object p2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->filename:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized loadGIF(Ljava/io/InputStream;)Z
    .locals 8

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v6

    const/high16 v7, 0xa00000

    if-lt v6, v7, :cond_0

    const/high16 v5, 0xa00000

    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    const/16 v7, 0x46

    if-ne v6, v7, :cond_1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    iget-object v6, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v3

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v4

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catchall_1
    move-exception v6

    :goto_3
    :try_start_5
    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v6

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPaused:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPaused:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    iput-object v3, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsCancelled:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPaused:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;-><init>(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;Lcom/sec/android/app/launcher/utils/AGifImgPlayer$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->stop()V

    goto :goto_0
.end method

.method public playBackwards(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPlayBackwards:Z

    return-void
.end method

.method public setCurrentMedia(Lcom/sec/android/app/launcher/views/AGifImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public setEnd()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    return-void
.end method

.method public setFrameDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mFrameDuration:I

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsLooping:Z

    return-void
.end method

.method public setTime(I)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsCancelled:Z

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mThread:Ljava/lang/Thread;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized updateAGIF(Z)Landroid/graphics/Bitmap;
    .locals 22

    monitor-enter p0

    const/4 v9, 0x0

    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x3e8

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovieStart:J

    move-wide/from16 v18, v0

    sub-long v18, v10, v18

    move-wide/from16 v0, v18

    long-to-int v8, v0

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :cond_2
    if-le v8, v7, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsLooping:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsLooping:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    sub-int/2addr v8, v7

    :cond_3
    :goto_0
    if-ge v8, v7, :cond_5

    move v15, v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPlayBackwards:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    sub-int v15, v7, v15

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentTime:J

    move-wide/from16 v18, v0

    int-to-long v0, v15

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v17

    if-eqz v17, :cond_5

    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Movie;->height()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v5, -0xbdbdbe

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    new-instance v13, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v16

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v17, -0xbdbdbe

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, v16, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v14, v0, v1, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2, v12}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    :goto_1
    int-to-long v0, v15

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentTime:J

    :cond_5
    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mLastImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mLastImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "MediaFlow"

    const-string v18, "using previously stored image"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mLastImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    monitor-exit p0

    return-object v9

    :cond_7
    move v8, v7

    goto/16 :goto_0

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Movie;->height()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mLastImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mLastImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mLastImage:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
