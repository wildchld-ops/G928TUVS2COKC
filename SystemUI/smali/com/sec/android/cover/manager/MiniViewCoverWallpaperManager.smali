.class public Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;
.super Ljava/lang/Object;
.source "MiniViewCoverWallpaperManager.java"


# static fields
.field private static PRELOAD_WALLPAPER_ID:[I = null

.field private static final TAG:Ljava/lang/String; = "MiniViewCoverWallpaperManager"

.field private static sInstance:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentWallpaperResId:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCurrentWallpaperResId:I

    new-instance v1, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v1}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v1, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager$1;-><init>(Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;)V

    iput-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->checkAndSetDefaultWallpaper(I)V

    iget-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$array;->mini_view_cover_default_wallpaper_color_list:I

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v1

    sput-object v1, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCurrentWallpaperResId:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    return-object v0
.end method


# virtual methods
.method public checkAndSetDefaultWallpaper(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->isWallpaperNeedToSetup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MiniViewCoverWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "sview_mini_cover_skin_color"

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getWallpaperIndexbySkinColor()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "sview_mini_color_wallpaper"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    const-string v1, "MiniViewCoverWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSetDefaultWallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getCurrentWallpaperResId()I
    .locals 5

    iget v2, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCurrentWallpaperResId:I

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCurrentWallpaperResId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v1

    const-string v2, "MiniViewCoverWallpaperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB wallpaperindex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCurrentWallpaperResId:I

    goto :goto_0
.end method

.method public getPreloadWallpaperResId(I)I
    .locals 4

    sget-object v1, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v1

    sget-object v1, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v1, "MiniViewCoverWallpaperManager"

    const-string v2, "PRELOAD_WALLPAPER is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/sec/android/sviewcover/R$color;->sview_mini_cover_color_0:I

    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    const-string v1, "MiniViewCoverWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid preload wallpaper index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    aget v1, v1, p1

    goto :goto_0
.end method

.method public getWallpaperIndex()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_mini_color_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWallpaperIndexbySkinColor()I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    const-string v2, "MiniViewCoverWallpaperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cover skin color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isWallpaperNeedToSetup(I)Z
    .locals 7

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "sview_mini_cover_skin_color"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v3, "MiniViewCoverWallpaperManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check new Cover old color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new Color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "sview_mini_color_wallpaper"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "MiniViewCoverWallpaperManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check saved wallpaper index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
