.class Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnCaptureAnimationListenerImplementer"
.end annotation


# instance fields
.field private finisher:Ljava/lang/Runnable;

.field private frame:Landroid/widget/FrameLayout;

.field private subFrame:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->subFrame:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->finisher:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ScreenCapture"

    const-string v2, "Capture effect finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z
    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1302(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->finisher:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$902(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->subFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->subFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1102(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
