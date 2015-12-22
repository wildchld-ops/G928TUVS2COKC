.class Lcom/android/systemui/statusbar/policy/FlashlightController$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateListener;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string v0, "FlashlightController"

    const-string v1, "Configure failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$500(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$500(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$400(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    :cond_1
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # setter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$502(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    goto :goto_0
.end method
