.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_QUIESCENT_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "StatusBar.KeyButtonView"


# instance fields
.field private mAnimateToQuiescent:Landroid/animation/Animator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDownTime:J

.field private mDrawingAlpha:F

.field private mIsFloatingKey:Z

.field private mIsLongClicked:Z

.field private mQuiescentAlpha:F

.field private mSupportsLongpress:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setLongClickable(Z)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    return p1
.end method

.method private animateToQuiescent()Landroid/animation/ObjectAnimator;
    .locals 4

    const-string v0, "drawingAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    return v0
.end method

.method public getQuiescentAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_6

    if-eqz v1, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    if-nez v6, :cond_5

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17

    move/from16 v0, p2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v6, p2, 0x8

    or-int/lit8 v14, v6, 0x40

    const/16 v15, 0x101

    const/16 v16, 0x1

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    move-object v2, v3

    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v6, p2, 0x8

    or-int/lit8 v14, v6, 0x40

    const/16 v15, 0x101

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v2, v3

    goto :goto_1
.end method

.method public setDrawingAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageAlpha(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    return-void
.end method

.method public setQuiescentAlpha(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->animateToQuiescent()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    goto :goto_0
.end method
