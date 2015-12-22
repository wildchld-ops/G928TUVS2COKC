.class Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;
.super Ljava/lang/Thread;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/utils/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperThread"
.end annotation


# static fields
.field static final easing:F = 0.333f


# instance fields
.field bUpdate:Z

.field mStop:Z

.field mToken:Landroid/os/IBinder;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field mX:F

.field mY:F

.field tilt_x_range:F

.field tilt_y_range:F

.field tx:F

.field ty:F

.field wallpaper_x_offset:F

.field wallpaper_x_range:F

.field wallpaper_y_offset:F

.field wallpaper_y_range:F


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const-string v0, "updateWallpaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mX:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mY:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tx:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->ty:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_offset:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_offset:F

    iput v2, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_range:F

    iput v2, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_range:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_x_range:F

    iput v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_y_range:F

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->bUpdate:Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mStop:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->shutdown()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;FFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->update(FFFFFF)V

    return-void
.end method

.method private declared-synchronized map(FFFFF)F
    .locals 3

    monitor-enter p0

    sub-float v0, p5, p4

    sub-float v1, p1, p2

    sub-float v2, p3, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p4

    monitor-exit p0

    return v0
.end method

.method private declared-synchronized setWindowToken(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mStop:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(FFFFFF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mX:F

    iput p2, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mY:F

    iput p5, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_range:F

    iput p6, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_range:F

    iput p3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_x_range:F

    iput p4, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_y_range:F

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const v9, 0x3eaa7efa    # 0.333f

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mX:F

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tx:F

    sub-float v7, v0, v1

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mY:F

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->ty:F

    sub-float v8, v0, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tx:F

    mul-float v1, v7, v9

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tx:F

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tx:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_x_range:F

    neg-float v2, v0

    iget v3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_x_range:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_range:F

    neg-float v4, v0

    iget v5, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_range:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->map(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_offset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->bUpdate:Z

    :cond_0
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->ty:F

    mul-float v1, v8, v9

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->ty:F

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->ty:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_y_range:F

    neg-float v2, v0

    iget v3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->tilt_y_range:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_range:F

    neg-float v4, v0

    iget v5, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_range:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->map(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_offset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->bUpdate:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->bUpdate:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->bUpdate:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_x_offset:F

    sub-float v2, v10, v2

    iget v3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->wallpaper_y_offset:F

    sub-float v3, v10, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$WallpaperThread;->mStop:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
