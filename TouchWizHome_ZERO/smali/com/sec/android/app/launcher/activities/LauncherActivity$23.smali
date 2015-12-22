.class Lcom/sec/android/app/launcher/activities/LauncherActivity$23;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->BitmapCompress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v1, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    const-string v0, "homescreen.png"

    const-string v2, "homescreen.temp"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureflag:Z
    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4000(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_4

    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v10, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureflag:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4002(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v7, v8

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->deleteScreenBitmap()V

    :cond_4
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_3
    throw v9

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v9

    move-object v7, v8

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v7, v8

    goto :goto_1
.end method
