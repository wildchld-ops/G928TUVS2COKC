.class public Lcom/sec/daliviews/views/PagedAdapterView;
.super Lcom/sec/daliviews/views/AdapterView;
.source "PagedAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;,
        Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;,
        Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedAdapterView"


# instance fields
.field private mCurrentPoint:Landroid/graphics/Point;

.field private mDownPoint:Landroid/graphics/Point;

.field private mDynamicLoading:Z

.field private mEditMode:Z

.field private mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

.field private mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

.field private mNormalMode:Z

.field private mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

.field private mWasScrollingAtDownEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/AdapterView;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDynamicLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mWasScrollingAtDownEvent:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mEditMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    iput-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    iput-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDownPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDynamicLoading:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mWasScrollingAtDownEvent:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mEditMode:Z

    sget-object v1, Lcom/sec/daliviews/R$styleable;->PagedAdapterView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->PagedAdapterView_dynamic_loading:I

    iget-boolean v2, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDynamicLoading:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setDynamicLoadingEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native createAdditionalPages(JI)V
.end method

.method private native enableTransitionEffect(JZ)V
.end method

.method private native fadeIn(JFFFFZ)V
.end method

.method private native fadeOut(JFFFFZ)V
.end method

.method private native isTransitionEffectEnabled(J)Z
.end method

.method private native setDynamicLoadingEnabled(JZ)V
.end method

.method private native setGridLayoutParams(JIIIIIIIZ)V
.end method

.method private native setLandscapeEffectParams(JFF)V
.end method

.method private native setListOrder(JI)V
.end method

.method private native setNormalModeMargin(JI)V
.end method

.method private native setPageFlipEnable(JZ)V
.end method

.method private native setPageIndicator(JJ)V
.end method

.method private native setPagePaddings(JIIII)V
.end method

.method private native setPagesDragEventInterest(JI)V
.end method

.method private native setZoomOutPageOffset(JFF)V
.end method

.method private native switchToNormalMode(JFZ)V
.end method

.method private native switchToZoomedOutPageMode(JFFFFLjava/lang/String;ZZII)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/AdapterView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public createAdditionalPages(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->createAdditionalPages(JI)V

    return-void
.end method

.method public createPages(I)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    invoke-interface {v0, p1}, Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;->onCreatePages(I)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDownPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mWasScrollingAtDownEvent:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public enableTransitionEffect(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->enableTransitionEffect(JZ)V

    return-void
.end method

.method public fadeIn(FFFFZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/PagedAdapterView;->fadeIn(JFFFFZ)V

    return-void
.end method

.method public fadeInComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;->onFadeInComplete()V

    :cond_0
    return-void
.end method

.method public fadeOut(FFFFZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/PagedAdapterView;->fadeOut(JFFFFZ)V

    return-void
.end method

.method public fadeOutComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;->onFadeOutComplete()V

    :cond_0
    return-void
.end method

.method public getFadeListener()Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    return-object v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransitionEffectEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->isTransitionEffectEnabled(J)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    instance-of v9, v3, Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v9, :cond_6

    move-object v5, v3

    check-cast v5, Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v1

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->isSnapping()Z

    move-result v2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isDragging()Z

    move-result v0

    iget-object v9, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDownPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mCurrentPoint:Landroid/graphics/Point;

    invoke-static {v9, v10}, Lcom/sec/daliviews/utils/Utils;->pointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v9

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getLongPressSensitivity()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    move v4, v7

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_0
    move v4, v8

    goto :goto_0

    :cond_1
    iget-boolean v9, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    if-eqz v9, :cond_3

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    move v6, v7

    :goto_2
    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    iget-boolean v9, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mEditMode:Z

    if-eqz v9, :cond_5

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    move v6, v7

    :goto_3
    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    iget-boolean v7, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mWasScrollingAtDownEvent:Z

    xor-int v6, v1, v7

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_1
.end method

.method public onItemUpdated(J)V
    .locals 3

    iget-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    invoke-interface {v1, v0}, Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;->onItemUpdated(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

.method public onItemsUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;->onItemsUpdated()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCreatePageListener(Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    return-void
.end method

.method public setDynamicLoadingEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mDynamicLoading:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->setDynamicLoadingEnabled(JZ)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mEditMode:Z

    return-void
.end method

.method public setFadeListener(Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mFadeListener:Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    return-void
.end method

.method public setGridLayoutParams(IIIIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v2

    const/4 v11, 0x1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(JIIIIIIIZ)V

    return-void
.end method

.method public setLandscapeEffectParams(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(JFF)V

    return-void
.end method

.method public setListOrder(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(JI)V

    return-void
.end method

.method public setNormalModeMargin(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->setNormalModeMargin(JI)V

    return-void
.end method

.method public setPageFlipEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->setPageFlipEnable(JZ)V

    return-void
.end method

.method public setPageIndicator(Lcom/sec/daliviews/views/PageIndicator;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/PageIndicator;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setPageIndicator(JJ)V

    return-void
.end method

.method public setPagePaddings(IIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagePaddings(JIIII)V

    return-void
.end method

.method public setPagedAdapterViewListener(Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    return-void
.end method

.method public setPagesDragEventInterest(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagesDragEventInterest(JI)V

    return-void
.end method

.method public setZoomModeListener(Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    return-void
.end method

.method public setZoomOutPageOffset(FF)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PagedAdapterView;->setZoomOutPageOffset(JFF)V

    return-void
.end method

.method public switchToNormalMode(F)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToNormalMode(JFZ)V

    return-void
.end method

.method public switchToNormalMode(FZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToNormalMode(JFZ)V

    return-void
.end method

.method public switchToZoomedOutPageMode(FFFFLjava/lang/String;ZII)V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v2

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToZoomedOutPageMode(JFFFFLjava/lang/String;ZZII)V

    return-void
.end method

.method public switchToZoomedOutPageMode(FFFFLjava/lang/String;ZZII)V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mNormalMode:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedAdapterView;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToZoomedOutPageMode(JFFFFLjava/lang/String;ZZII)V

    return-void
.end method

.method public updatePageType([II)V
    .locals 1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mPagedAdapterViewListener:Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;->updatePageType([II)V

    goto :goto_0
.end method

.method public zoomInComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;->onZoomInComplete()V

    :cond_0
    return-void
.end method

.method public zoomOutComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PagedAdapterView;->mListener:Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;->onZoomOutComplete()V

    :cond_0
    return-void
.end method
