.class Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread$1;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Lcom/samsung/android/saiv/codec/VideoTranscoder$ProgressEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "PhotoRingScreen"

    const-string v1, "completed video resize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    invoke-virtual {v0, v2}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStarted()V
    .locals 2

    const-string v0, "PhotoRingScreen"

    const-string v1, "Start video resizing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
