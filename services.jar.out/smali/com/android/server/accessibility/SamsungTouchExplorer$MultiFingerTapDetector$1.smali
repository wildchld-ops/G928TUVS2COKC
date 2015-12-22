.class Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;
.super Landroid/os/Handler;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/high16 v1, 0x80000

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2000(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/high16 v1, 0x200000

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2000(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performSingleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->access$2200(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->access$2300(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTapAndHold()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->access$2400(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performTripleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->access$2500(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
