.class Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;
.super Landroid/os/AsyncTask;
.source "HomeRealPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomeRealPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private captureTime:J

.field private hasClock:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->hasClock:Z

    return-void
.end method

.method private saveMainHomeScreen(Landroid/graphics/Bitmap;Z)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v3, "capture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveMainHomeScreen compress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0x4e20

    if-ge v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_0

    :cond_6
    :try_start_2
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz p2, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    :try_start_3
    const-string v0, "homescreenPreview_capturetime_land"

    :goto_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-nez v3, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz p2, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto/16 :goto_0

    :cond_b
    :try_start_4
    const-string v0, "homescreenPreview_capturetime"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto/16 :goto_0

    :cond_d
    :try_start_5
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->captureTime:J

    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz p2, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    if-eqz p2, :cond_11

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$502(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    :goto_3
    throw v3

    :cond_11
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$702(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    goto :goto_3
.end method

.method private saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # invokes: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$800(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p2, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # invokes: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$800(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/homescreenPreviewLand.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    const-string v6, "capture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveToFileCaptureScreen ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SCREENSHOT_FILE_PATH : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # invokes: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getExternalCacheDir()Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$800(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/homescreenPreview.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    throw v6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_3
.end method


# virtual methods
.method public captureMainHomeScreen(Z)Z
    .locals 12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$400(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->canCapture()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getMainHomeScreenshot()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$500(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    if-ne v1, v7, :cond_5

    const/4 v4, 0x1

    :goto_1
    const-string v7, "capture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "captureMainHomeScreen land : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$600(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getScreenBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    :cond_7
    if-nez p1, :cond_8

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->captureTime:J

    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainHomeZeroPage:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$602(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)Z

    :cond_9
    if-nez v0, :cond_c

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerViewBase;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerViewBase;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerViewBase;->setDrawingCacheEnabled(Z)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_a
    throw v7

    :cond_b
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->captureTime:J

    if-eqz p1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->captureTime:J

    :cond_c
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_12

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v8, v10

    if-ltz v7, :cond_e

    :cond_d
    if-nez v4, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_f

    :cond_e
    const-string v7, "capture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "captureMainHomeScreen: change orientation so can\'t capture: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f2b851f    # 0.67f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f2b851f    # 0.67f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v7, "capture"

    const-string v8, "captureMainHomeScreen scale : "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->saveMainHomeScreen(Landroid/graphics/Bitmap;Z)Z

    move-result v7

    goto/16 :goto_0

    :cond_12
    const-string v7, "capture"

    const-string v8, "MainHome Capture image size error!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->hasClock:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->captureMainHomeScreen(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "capture"

    const-string v1, "cancelled capturetask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->DB_ID_RESET:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$200(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)I

    move-result v1

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mMainDbId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$102(Lcom/sec/android/app/launcher/activities/HomeRealPreview;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mScreenShotDelay:I
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$300(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)I

    move-result v0

    const/16 v1, 0x4b0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
