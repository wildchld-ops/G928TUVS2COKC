.class Lcom/sec/android/app/launcher/activities/LauncherActivity$8;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->initNativeEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBooster:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

.field private mMonkeyTime:J

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->mMonkeyTime:J

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->mBooster:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    return-void
.end method

.method private monkeyFix(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->mMonkeyTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$900(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/VelocityTracker;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$902(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$900(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->monkeyFix(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->hideSelection()V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->mBooster:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->acquire()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1400(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/events/NativeEventHitlist;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/daliviews/events/NativeEventHitlist;->processEvent(Landroid/view/MotionEvent;)Z

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-ne v0, v6, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->mBooster:Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->release()V

    :cond_5
    :goto_1
    return v6

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDownMotionX:F
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1002(Lcom/sec/android/app/launcher/activities/LauncherActivity;F)F

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    check-cast v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->currentPageStartingScroll:I
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1102(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)I

    goto :goto_0

    :cond_6
    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    check-cast v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->currentPageStartingScroll:I
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1102(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)I

    goto/16 :goto_0

    :cond_7
    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    check-cast v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->currentPageStartingScroll:I
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1102(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$900(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/VelocityTracker;

    move-result-object v3

    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMaximumVelocity:I
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->hasInstance()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    :cond_8
    instance-of v3, v1, Lcom/sec/daliviews/views/TextureView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mSurfaceView onTouch - mResumed :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
