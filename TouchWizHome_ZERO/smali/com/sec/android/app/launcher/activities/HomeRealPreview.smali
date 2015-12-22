.class public Lcom/sec/android/app/launcher/activities/HomeRealPreview;
.super Ljava/lang/Object;
.source "HomeRealPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;
    }
.end annotation


# static fields
.field private static final MESSAGE_CAPTURE_HOME:I = 0x93

.field public static final SCREENSHOT_DELAY_FIRST_SHOT:I = 0x4b0

.field public static final SCREENSHOT_DELAY_FIRST_SHOT_THEME:I = 0x1388

.field public static final SCREENSHOT_DELAY_NONE:I = 0x0

.field public static final SCREENSHOT_DELAY_NORMAL:I = 0x12c

.field private static final SCREENSHOT_MIN_SIZE:I = 0x4e20

.field private static final SCREENSHOT_SIZE_RATIO:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "capture"


# instance fields
.field private DB_ID_INIT:I

.field private DB_ID_RESET:I

.field private mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

.field private mDirect:Z

.field private mExternalCacheDirPath:Ljava/lang/String;

.field private mFolderColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mMainDbId:I

.field private mMainHomeScreenshot:Z

.field private mMainHomeScreenshotLand:Z

.field private mMainHomeZeroPage:Z

.field private mScreenShotDelay:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    const/16 v0, -0x64

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_INIT:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_INIT:I

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mFolderColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mDirect:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mScreenShotDelay:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;)Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/launcher/activities/HomeRealPreview;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mScreenShotDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Lcom/sec/android/app/launcher/activities/HomePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExternalCacheDir()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mExternalCacheDirPath:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mExternalCacheDirPath:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mExternalCacheDirPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public captureMainHomeScreen(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 9

    const/16 v8, 0x93

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "capture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " populated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->populated()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMainDbId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getDbId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getMainHomeScreenshot()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->populated()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasClockWidget()Z

    move-result v1

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    iget v6, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    iget v6, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_INIT:I

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v6

    if-eq v5, v6, :cond_5

    move v0, v3

    :goto_0
    if-nez v0, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mDirect:Z

    if-eqz v5, :cond_1

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mDirect:Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    :cond_2
    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    if-eq v3, v4, :cond_3

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v8, v2, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mScreenShotDelay:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    goto :goto_1
.end method

.method public checkFileExist()Z
    .locals 9

    const/16 v8, 0x4b0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/homescreenPreview.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/homescreenPreviewLand.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "capture"

    const-string v7, "---------checkFileExist "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "capture"

    const-string v6, "---------checkFileExist land"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(I)V

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getMainHomeScreenshot()Z
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMainHomeScreenshot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMainHomeScreenshotLand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    if-eqz v1, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    if-eqz v1, :cond_2

    if-ne v0, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setDirect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mDirect:Z

    return-void
.end method

.method public setFolderColor(Lcom/sec/android/app/launcher/activities/PagePresenter;IZ)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iput p2, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mFolderColor:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mFolderColor:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mFolderColor:I

    if-eq v0, p2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->captureMainHomeScreen(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    :cond_3
    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mFolderColor:I

    goto :goto_0
.end method

.method public setMainHomeDbId()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getDefaultPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    goto :goto_0
.end method

.method public setMainHomeScreenshot(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(Z)V

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mScreenShotDelay:I

    return-void
.end method

.method public setMainHomeScreenshot(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mScreenShotDelay:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I

    :cond_0
    return-void
.end method

.method public setMainHomeZeroPage(ZJ)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    const-string v0, "capture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainHomeZeroPage mMainHomeZeroPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
