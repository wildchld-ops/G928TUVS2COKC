.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const-string v6, "PhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*FMB* setFloatingMenuEnabled MotionEvent.ACTION_DOWN x : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v9

    float-to-int v9, v9

    aput v9, v6, v8

    :cond_0
    :goto_0
    const/4 v6, 0x0

    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)J

    move-result-wide v8

    sub-long v24, v4, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v24, v8

    if-lez v6, :cond_2

    const-wide/16 v8, 0x14

    cmp-long v6, v24, v8

    if-gez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J
    invoke-static {v6, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3002(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;J)J

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int v16, v6, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v17, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x0

    aget v6, v6, v8

    add-int v18, v6, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    add-int v19, v6, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v6, v0, Landroid/view/View;

    if-eqz v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1050011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v6, v20

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v6, v8

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    check-cast v20, Landroid/view/View;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    :cond_4
    const-string v6, "PhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*FMB* setFloatingMenuEnabled MotionEvent.ACTION_MOVE x : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;

    if-eqz v6, :cond_0

    move-object/from16 v6, p1

    check-cast v6, Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;->isViewInTransparentRegion()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int v16, v6, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v17, v6, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v6, v8

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v23, v0

    const-string v6, "PhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*FMB* setFloatingMenuEnabled MotionEvent.ACTION_UP moveX : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", moveY : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", threshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v6, v16, v16

    mul-int v8, v17, v17

    add-int/2addr v6, v8

    mul-int v8, v23, v23

    if-ge v6, v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x52

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    new-instance v7, Landroid/view/KeyEvent;

    const-wide/16 v8, 0x1e

    add-long v10, v4, v8

    const/4 v12, 0x1

    const/16 v13, 0x52

    const/4 v14, 0x0

    move-wide v8, v4

    invoke-direct/range {v7 .. v14}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v15

    const/4 v6, 0x0

    invoke-virtual {v15, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v15, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v22, 0x1

    :goto_2
    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    const/16 v22, 0x0

    goto :goto_2

    :cond_7
    const-string v6, "PhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to dispatch the MenuEvent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
