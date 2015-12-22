.class public Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static SHORTCUT_LAUNCH_ON_RELEASE:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockEventHandler"


# instance fields
.field private mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsIgnoreTouch:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field mTempRect:Landroid/graphics/Rect;

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->shortcutLaunchOnRelease()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->launch()V

    return-void
.end method

.method private isUSAShortcutView(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launch()V
    .locals 3

    const-string v0, "KeyguardUnlockEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch() - mIsKeyguardDismissing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    instance-of v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    const-string v13, "KeyguardUnlockEventHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mIsUnlockStarted - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v8, v2, 0xff

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->isUSAShortcutView(Landroid/view/View;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    if-eq v2, v13, :cond_1

    const/4 v13, 0x3

    if-ne v2, v13, :cond_2

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v13, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v13

    goto :goto_0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    packed-switch v8, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v13, :cond_7

    if-eqz v7, :cond_17

    :cond_7
    const/4 v13, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v13, "KeyguardUnlockEventHandler"

    const-string v14, "mIsMultiTouch true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v13, "KeyguardUnlockEventHandler"

    const-string v14, "mIsMultiTouch false"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    :goto_2
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    sub-float v13, v11, v13

    float-to-int v3, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    sub-float v13, v12, v13

    float-to-int v6, v13

    int-to-double v14, v3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    int-to-double v0, v6

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    :cond_b
    :goto_3
    if-eqz p1, :cond_c

    sget-boolean v13, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    if-nez v13, :cond_6

    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    cmpl-double v13, v14, v16

    if-ltz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v13, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez p1, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v13}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v13, Landroid/view/View;

    new-instance v14, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v13, v14, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_3

    :pswitch_4
    const v13, 0xff00

    and-int/2addr v13, v2

    shr-int/lit8 v10, v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-nez v9, :cond_f

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    :cond_f
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_10

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v13, "KeyguardUnlockEventHandler"

    const-string v14, "mIsMultiTouch false"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_11

    const/4 v13, 0x3

    if-ne v8, v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_11
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_12
    const-string v13, "KeyguardUnlockEventHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_UP mDistance: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_16

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-ltz v13, :cond_13

    sget-boolean v13, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    if-eqz v13, :cond_16

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v13, :cond_16

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez p1, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v13}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v13, Landroid/view/View;

    new-instance v14, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v13, v14, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v13, "KeyguardUnlockEventHandler"

    const-string v14, "mIsMultiTouch false"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    return-void
.end method
