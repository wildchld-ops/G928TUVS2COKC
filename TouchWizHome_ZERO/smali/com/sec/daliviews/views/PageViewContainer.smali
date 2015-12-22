.class public Lcom/sec/daliviews/views/PageViewContainer;
.super Lcom/sec/daliviews/views/ContainerViewBase;
.source "PageViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;,
        Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPoint:Landroid/graphics/Point;

.field private mDownPoint:Landroid/graphics/Point;

.field private mDownTime:J

.field private mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

.field private mIgnoreTouchReported:Z

.field private mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

.field private mPinchOverridesScrollInterval:J

.field private mPinchPossible:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchPossible:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownTime:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchOverridesScrollInterval:J

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageViewContainer;->mIgnoreTouchReported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchPossible:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownTime:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchOverridesScrollInterval:J

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageViewContainer;->mIgnoreTouchReported:Z

    return-void
.end method

.method private completeFadeOut()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;->onFadeOutComplete()V

    :cond_0
    return-void
.end method

.method private completeSwitchingZoomedOutMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;->onModeChangeToZoomOutComplete()V

    return-void
.end method

.method private native detachPage(JJZ)V
.end method

.method private native disableScrollEffect(JI)V
.end method

.method private native enableTransitionEffect(JZ)V
.end method

.method private native fadeIn(JFZZZ)V
.end method

.method private native fadeOut(JLjava/lang/String;FFZ)V
.end method

.method private native finishAddingPageinZoomedOutPageMode(JZ)V
.end method

.method private native getDefaultPageIndex(J)I
.end method

.method private native getPageOrder(JJ)I
.end method

.method private native initializeExtraPageIndicator(JILandroid/graphics/Bitmap;)V
.end method

.method private native insertPage(JIJZ)V
.end method

.method private native invalidatePageIndicator(JZ)V
.end method

.method private native onNormalModeAnimationComplete(J)V
.end method

.method private native onPageDeleted(J)V
.end method

.method private native onScaledModeAnimationComplete(J)V
.end method

.method private pageOrderChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;->onPageOrderChanged()V

    return-void
.end method

.method private native setContainerScale(JF)V
.end method

.method private native setExtraPageIndicatorEnabled(JIZ)V
.end method

.method private native setLandscapeEffectParams(JFF)V
.end method

.method private native setNormalModeMargin(JI)V
.end method

.method private native setPageIndicator(JJ)V
.end method

.method private native switchToNormalMode(JZF)V
.end method

.method private native switchToScaledMode(JFZFILjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method private native updateMiniPageItems(J)V
.end method

.method private native updatePageBackgrounds(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public completeFadeIn()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;->onFadeInComplete()V

    :cond_0
    return-void
.end method

.method public completeSwitchingNormalMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;->onModeChangeToNormalComplete()V

    return-void
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->destroy()V

    return-void
.end method

.method public detachPage(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/PageViewContainer;->detachPage(JJZ)V

    return-void
.end method

.method public disableScrollEffect(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageViewContainer;->disableScrollEffect(JI)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchPossible:Z

    iput-boolean v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mIgnoreTouchReported:Z

    iget-object v3, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownPoint:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownTime:J

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/daliviews/views/PageViewContainer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/daliviews/views/PageViewContainer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPinchExclusionDistance()F

    move-result v0

    iget-object v3, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownPoint:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    invoke-static {v3, v6}, Lcom/sec/daliviews/utils/Utils;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownTime:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchOverridesScrollInterval:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    sget-object v3, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    const-string v6, "2nd finger down soon after first finger - assume pinch is intended"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    const-string v6, "Cancel a scroll - if one is active"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->cancelScroll()V

    goto :goto_0
.end method

.method public enableTransitionEffect(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageViewContainer;->enableTransitionEffect(JZ)V

    return-void
.end method

.method public fadeIn(FZZZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/PageViewContainer;->fadeIn(JFZZZ)V

    return-void
.end method

.method public fadeOut(Ljava/lang/String;FFZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/PageViewContainer;->fadeOut(JLjava/lang/String;FFZ)V

    return-void
.end method

.method public finishAddingPageinZoomedOutPageMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageViewContainer;->finishAddingPageinZoomedOutPageMode(JZ)V

    return-void
.end method

.method public getDefaultPageIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageViewContainer;->getDefaultPageIndex(J)I

    move-result v0

    return v0
.end method

.method public getFadeCompleteListener()Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    return-object v0
.end method

.method public getPageOrder(Lcom/sec/daliviews/views/PageView;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/PageView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/PageViewContainer;->getPageOrder(JJ)I

    move-result v0

    return v0
.end method

.method public initializeExtraPageIndicator(ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/sec/daliviews/utils/BitmapUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/daliviews/views/PageViewContainer;->initializeExtraPageIndicator(JILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public insertPage(ILcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v0, p0

    move v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/daliviews/views/PageViewContainer;->insertPage(JIJZ)V

    return-void
.end method

.method public invalidatePageIndicator(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageViewContainer;->invalidatePageIndicator(JZ)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    const/4 v3, 0x0

    instance-of v6, v0, Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v6, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mDownPoint:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/sec/daliviews/views/PageViewContainer;->mCurrentPoint:Landroid/graphics/Point;

    invoke-static {v6, v7}, Lcom/sec/daliviews/utils/Utils;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v6

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getLongPressSensitivity()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    move v1, v4

    :goto_0
    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isSnapping()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isDragging()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v1, :cond_4

    sget-object v6, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scrolling on view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getIds()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", return true to intercept events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isSnapping()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    const-string v7, "Scrolling active on DOWN event"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    sget-object v7, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent: isScrolling="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", not snapping="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isSnapping()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", not dragging="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isDragging()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", not longPressPossible="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_7

    move v6, v4

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", PinchPossible="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchPossible:Z

    if-nez v8, :cond_8

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ==> result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    move v1, v5

    goto/16 :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchPossible:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    const-string v7, "Pinch is in progress"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v5

    goto :goto_3

    :cond_7
    move v6, v5

    goto :goto_4

    :cond_8
    move v4, v5

    goto :goto_5
.end method

.method protected onItemLongPress(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p3}, Lcom/sec/daliviews/views/PageViewContainer;->onLongPress(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/sec/daliviews/views/ContainerViewBase;->onItemLongPress(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onNormalModeAnimationComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageViewContainer;->onNormalModeAnimationComplete(J)V

    return-void
.end method

.method public onPageDeleted()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageViewContainer;->onPageDeleted(J)V

    return-void
.end method

.method public onScaledModeAnimationComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageViewContainer;->onScaledModeAnimationComplete(J)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mIgnoreTouchReported:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/PageViewContainer;->TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent because of scrolling - ignoring events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PageViewContainer;->mIgnoreTouchReported:Z

    const/4 v0, 0x0

    return v0
.end method

.method protected resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->resetPeer()V

    return-void
.end method

.method public setContainerScale(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageViewContainer;->setContainerScale(JF)V

    return-void
.end method

.method public setExtraPageIndicatorEnabled(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageViewContainer;->setExtraPageIndicatorEnabled(JIZ)V

    return-void
.end method

.method public setFadeCompleteListener(Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageViewContainer;->mFadeListener:Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    return-void
.end method

.method public setLandscapeEffectParams(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageViewContainer;->setLandscapeEffectParams(JFF)V

    return-void
.end method

.method public setNormalModeListener(Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageViewContainer;->mListener:Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;

    return-void
.end method

.method public setNormalModeMargin(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageViewContainer;->setNormalModeMargin(JI)V

    return-void
.end method

.method public setPageIndicator(Lcom/sec/daliviews/views/PageIndicator;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/PageIndicator;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/PageViewContainer;->setPageIndicator(JJ)V

    return-void
.end method

.method public setPinchOverridesScrollInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchOverridesScrollInterval:J

    return-void
.end method

.method public setPinchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/PageViewContainer;->mPinchPossible:Z

    return-void
.end method

.method public setScaleDetector(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageViewContainer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public switchToNormalMode(ZF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageViewContainer;->switchToNormalMode(JZF)V

    return-void
.end method

.method public switchToScaledMode(FZFILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/sec/daliviews/views/PageViewContainer;->switchToScaledMode(JFZFILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public updateMiniPageItems()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageViewContainer;->updateMiniPageItems(J)V

    return-void
.end method

.method public updatePageBackgrounds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageViewContainer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageViewContainer;->updatePageBackgrounds(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
