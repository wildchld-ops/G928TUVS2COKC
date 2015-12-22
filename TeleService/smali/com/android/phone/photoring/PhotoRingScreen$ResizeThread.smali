.class Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;
.super Ljava/lang/Thread;
.source "PhotoRingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeThread"
.end annotation


# instance fields
.field mhandler:Landroid/os/Handler;

.field resizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;

.field videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;


# direct methods
.method private constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;Lcom/samsung/android/saiv/codec/VideoTranscoder;Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Lcom/samsung/android/saiv/codec/VideoTranscoder;
    .param p3    # Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;
    .param p4    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    iput-object p3, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    iput-object p4, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->mhandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;Lcom/samsung/android/saiv/codec/VideoTranscoder;Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;Landroid/os/Handler;Lcom/android/phone/photoring/PhotoRingScreen$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/photoring/PhotoRingScreen;
    .param p2    # Lcom/samsung/android/saiv/codec/VideoTranscoder;
    .param p3    # Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;
    .param p4    # Landroid/os/Handler;
    .param p5    # Lcom/android/phone/photoring/PhotoRingScreen$1;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;Lcom/samsung/android/saiv/codec/VideoTranscoder;Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->stop()V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread$1;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread$1;-><init>(Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->setProgressEventListener(Lcom/samsung/android/saiv/codec/VideoTranscoder$ProgressEventListener;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->videoTranscoder:Lcom/samsung/android/saiv/codec/VideoTranscoder;

    invoke-virtual {v1}, Lcom/samsung/android/saiv/codec/VideoTranscoder;->encode()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhotoRingScreen"

    const-string v2, "resizing Video error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$3400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$3400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$3400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0
.end method
