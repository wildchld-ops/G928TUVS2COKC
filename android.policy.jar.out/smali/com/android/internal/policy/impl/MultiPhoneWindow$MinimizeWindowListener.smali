.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeWindowListener"
.end annotation


# instance fields
.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mIsMoving:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mMoveInterval:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MinimizeWindowListener.onLongClick v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v2, "onLongClick : moving so return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->showTrash()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    const/16 v18, 0x0

    :goto_1
    return v18

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_3

    const/4 v13, 0x1

    :goto_2
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v18, :cond_1

    const-string v18, "MultiPhoneWindow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MinimizeWindowListener.onTouch action=DOWN (mShouldUseMinimizeView="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    if-eqz v13, :cond_0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    const/high16 v20, 0x800000

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->makeMinimizeIcons(Z)Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v12, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v12, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->initialize(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x800000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    const-string v18, "MultiPhoneWindow"

    const-string v19, "mIsMoving true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->isShowingTrash()Z

    move-result v18

    if-nez v18, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v18

    if-eqz v18, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->vibrateImmVibeFromWindow([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)Z
    invoke-static {v0, v9, v10, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)Z

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :pswitch_2
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v18, :cond_d

    const-string v18, "MultiPhoneWindow"

    const-string v19, "MinimizeWindowListener.onTouch action=CANCEL"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v18, :cond_e

    const-string v18, "MultiPhoneWindow"

    const-string v19, "MinimizeWindowListener.onTouch action=UP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeIconPressed(ZZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5600(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkCenterBarPoint()V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    check-cast v18, Landroid/app/Activity;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v21, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const/16 v18, 0x67

    move/from16 v0, v18

    iput v0, v14, Landroid/os/Message;->what:I

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v21, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "POPW"

    const-string v20, "CHANGE-SPLIT"

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    move/from16 v18, v0

    sub-int v6, v4, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    move/from16 v18, v0

    sub-int v7, v5, v18

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)Z
    invoke-static {v0, v6, v7, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)Z

    move-result v17

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move/from16 v18, v0

    sub-int v6, v4, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    move/from16 v18, v0

    sub-int v7, v5, v18

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v18, :cond_18

    const-string v18, "MultiPhoneWindow"

    const-string v19, "Minimized->Floating"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x68

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x68

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/high16 v18, 0x800000

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v21, 0x800000

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v21, 0x105022d

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v21

    add-int v18, v18, v21

    :goto_8
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto/16 :goto_5

    :cond_1a
    const/16 v18, 0x0

    goto :goto_8

    :cond_1b
    const/16 v18, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
