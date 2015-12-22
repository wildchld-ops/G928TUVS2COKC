.class public Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.super Ljava/lang/Object;
.source "SViewCoverWallpaperManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# instance fields
.field private final PRELOAD_WALLPAPER_ID:[I

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mGuestWallpaperImageFilesDir:Ljava/io/File;

.field private mRootFilesDir:Ljava/io/File;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mUserWallpaperImageFilesDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;-><init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    const-string v0, "CoverUI"

    const-string v1, "create SViewCoverWallpaperManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    const-string v2, "wallpaper_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->checkAndCreateWallpaperFile()V

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$array;->s_view_cover_default_wallpaper_drawable_list:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getOwnerWallpaperFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setOwnerWallpaperFilePath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->backupOwnerWallpaperFilePath()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->checkAndCreateGuestWallpaperFileDir()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    return-object v0
.end method

.method private backupOwnerWallpaperFilePath()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "s_view_cover_owner_wallpaper_path"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndCreateGuestWallpaperFileDir()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "checkAndCreateGuestWallpaperFileDir()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    const-string v2, "guest_wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_1
    return-void
.end method

.method private checkAndCreateWallpaperFile()V
    .locals 10

    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v8, "checkAndCreateWallpaperFile()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->moveUserWallpaperFile()V

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v8, "file is already existed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sviewcover_wallpaper:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createWallpaperfolder to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveImageFile : File saving failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v4, v5

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    return-object v0
.end method

.method private getOwnerWallpaperFilePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "s_view_cover_owner_wallpaper_path"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    return v7

    :cond_2
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "File is copied successful!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_5
    move-object v5, v6

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_8
    throw v7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_6

    :catchall_2
    move-exception v7

    move-object v5, v6

    move-object v2, v3

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private moveUserWallpaperFile()V
    .locals 9

    const/4 v8, 0x1

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "moveUserWallpaperFile()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v5

    const-string v6, "sview_bg_wallpaper_path"

    invoke-virtual {v5, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    if-nez v5, :cond_2

    :cond_0
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "Dir path is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_3

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "Dir path are same"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-ne v4, v8, :cond_5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v5

    const-string v6, "sview_bg_wallpaper_path"

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user wallpaper file moving is completed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_index_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_index_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-ne v4, v8, :cond_6

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v5

    const-string v6, "sview_bg_wallpaper_path"

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user wallpaper file moving is completed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "moveUserWallpaperFile failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    :try_start_3
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "moveUserWallpaperFile failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private setOwnerWallpaperFilePath(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "sview_bg_wallpaper_path"

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "getWallpaperDrawble : Emergency mode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->black_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v2

    add-int/lit8 v1, v2, -0xa

    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isCustomWallpaperEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getCustomWallpaperDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->wallpaper_item_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->wallpaper_item_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    :goto_0
    invoke-static {v3, v7, v6}, Lcom/sec/android/cover/CoverUtils;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_0
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-object v8

    :cond_0
    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v9, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v10, "getUserWallpaper : OutOfMemoryError !!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v10, "Custom wallpaper file not extist!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCustomWallpaperFilePathName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPreloadWallpaperFilePathName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_index_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPreloadWallpaperResId(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "PRELOAD_WALLPAPER is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->wallpaper_default_01:I

    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid preload wallpaper index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getWallpaperFolderPath()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomWallpaperFolderPath() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper_images"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWallpaperIndex()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "sview_color_wallpaper"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWallpaperIndexbySkincolor()I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

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

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isCustomWallpaperEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWallpaperNeedToSetup(I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "s_view_cover_skin_color"

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "s_view_cover_skin_color"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_2

    :goto_1
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

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

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "sview_color_wallpaper"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

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

    if-ne v2, v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public setDefaultWallpaper(Ljava/io/File;)V
    .locals 11

    if-nez p1, :cond_1

    sget-object v8, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v9, "wallpaperFilesDir is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cover_wallpaper.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v9

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v8, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v8

    const-string v9, "sview_bg_wallpaper_path"

    invoke-virtual {v8, v9, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v8

    const-string v9, "sview_color_wallpaper"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    sget-object v8, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDefaultWallpaper : File saving failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v5, v6

    goto :goto_1

    :cond_4
    move-object v5, v6

    goto/16 :goto_0
.end method

.method public setWallaper(II)V
    .locals 10

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperFilePathName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, p2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v8

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v7

    const-string v8, "sview_color_wallpaper"

    add-int/lit8 v9, p2, 0xa

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v7

    const-string v8, "s_view_cover_skin_color"

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "wallpaperType"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveImageFile : File saving failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_3
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v7

    const-string v8, "sview_color_wallpaper"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :cond_4
    move-object v4, v5

    goto :goto_0
.end method
