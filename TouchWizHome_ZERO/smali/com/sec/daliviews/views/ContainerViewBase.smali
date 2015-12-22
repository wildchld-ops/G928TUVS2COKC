.class public abstract Lcom/sec/daliviews/views/ContainerViewBase;
.super Lcom/sec/daliviews/views/NativeViewBase;
.source "ContainerViewBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;,
        Lcom/sec/daliviews/views/ContainerViewBase$Policy;,
        Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTOSCROLL_SPEED:I = 0xbb8

.field private static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "ContainerViewBase"


# instance fields
.field protected mAllowedModes:I

.field protected mAllowedViewTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDefaultMode:I

.field private mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

.field private mGroupFlags:I

.field private mInterceptTouchListener:Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;

.field private mLayout:Lcom/sec/daliviews/layouts/LayoutBase;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mInterceptTouchListener:Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mInterceptTouchListener:Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;

    iput-object v3, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    sget-object v3, Lcom/sec/daliviews/R$styleable;->ContainerViewBase:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    sget v3, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_rearrangement_algorithm:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setRearrangementAlgorithm(I)V

    sget v3, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_autoscroll_speed:I

    const/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setAutoScrollSpeed(I)V

    sget v3, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_defaultMode:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v3, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_rearrangement_delay:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setRearrangementDragDelay(F)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/ContainerViewBase;->setDefaultMode(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native addBackgroundView(JJ)V
.end method

.method private addTouchTarget(Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;
    .locals 2

    invoke-static {p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->obtain(Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    iput-object v1, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    return-object v0
.end method

.method private native addView(JJ)V
.end method

.method private native addViews(J[JI)V
.end method

.method private native animateBackgroundOffset(JFFF)V
.end method

.method private static canViewReceivePointerEvents(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isOnScreen()Z

    move-result v0

    return v0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v8, 0x1

    :cond_0
    iget-object v9, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    :goto_0
    if-eqz v9, :cond_1

    iget-object v2, v9, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {v2}, Lcom/sec/daliviews/views/ContainerViewBase;->resetCancelNextUpFlag(Lcom/sec/daliviews/views/NativeViewBase;)Z

    const/4 v2, 0x1

    iget-object v3, v9, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    iget v4, v9, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/daliviews/views/ContainerViewBase;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLcom/sec/daliviews/views/NativeViewBase;I)Z

    iget-object v9, v9, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->clearTouchTargets()V

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    iget-object v1, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->recycle()V

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    :cond_1
    return-void
.end method

.method private native constraintSize(JJZ)V
.end method

.method private native deleteAllViews(J)V
.end method

.method private native deleteView(JJ)V
.end method

.method private native deleteViewAt(JI)V
.end method

.method private native detachAllViews(J)V
.end method

.method private native detachView(JI)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native detachView(JJ)V
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLcom/sec/daliviews/views/NativeViewBase;I)Z
    .locals 8

    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez p2, :cond_0

    if-ne v2, v6, :cond_2

    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    if-nez p3, :cond_1

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p3, p1}, Lcom/sec/daliviews/views/NativeViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPointerIdBits(Landroid/view/MotionEvent;)I

    move-result v3

    and-int v1, v3, p4

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_5

    if-nez p3, :cond_4

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p3, Lcom/sec/daliviews/views/NativeViewBase;->mLocalX:F

    iget v7, p3, Lcom/sec/daliviews/views/NativeViewBase;->mLocalY:F

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p3, p1}, Lcom/sec/daliviews/views/NativeViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method private native getLayout(J)Lcom/sec/daliviews/layouts/LayoutBase;
.end method

.method private getPointerIdBits(Landroid/view/MotionEvent;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getTouchTarget(Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private native insertView(JIJ)V
.end method

.method private isChildrenDrawingOrderEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native replaceView(JJI)V
.end method

.method private static resetCancelNextUpFlag(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->clearTouchTargets()V

    invoke-static {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->resetCancelNextUpFlag(Lcom/sec/daliviews/views/NativeViewBase;)Z

    iget v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mGroupFlags:I

    return-void
.end method

.method private native setAutoScrollSpeed(JI)V
.end method

.method private native setBackgroundScale(JFF)V
.end method

.method private native setChildrenSensitive(JZ)V
.end method

.method private native setContainerType(JI)V
.end method

.method private native setContainerTypeAndId(JII)V
.end method

.method private native setDbId(JI)V
.end method

.method private native setDefaultMode(JI)V
.end method

.method private native setLayout(JJ)V
.end method

.method private native setLayoutDirection(JI)V
.end method

.method private native setRearrangementAlgorithm(JI)V
.end method

.method private native setRearrangementDragDelay(JF)V
.end method

.method private native setShadowEffect(JJ)V
.end method

.method private native stopScrolling(J)V
.end method


# virtual methods
.method public addAllowedMode(I)V
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedModes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedModes:I

    return-void
.end method

.method public addAllowedViewType(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBackgroundView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->addBackgroundView(JJ)V

    return-void
.end method

.method public addView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    instance-of v1, p1, Lcom/sec/daliviews/views/Merge;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/views/Merge;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/Merge;->setParentView(Lcom/sec/daliviews/views/ContainerViewBase;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Merge;->getMergeViews()[Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->addViews([Lcom/sec/daliviews/views/NativeViewBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/daliviews/views/ContainerViewBase;->addView(JJ)V

    goto :goto_0
.end method

.method public addViews([Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    aget-object v6, p1, v0

    instance-of v6, v6, Lcom/sec/daliviews/views/Merge;

    if-eqz v6, :cond_0

    aget-object v2, p1, v0

    check-cast v2, Lcom/sec/daliviews/views/Merge;

    invoke-virtual {v2, p0}, Lcom/sec/daliviews/views/Merge;->setParentView(Lcom/sec/daliviews/views/ContainerViewBase;)V

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Merge;->getMergeViews()[Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_1

    aget-object v6, v3, v1

    invoke-virtual {v6}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [J

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v6

    array-length v8, p1

    invoke-direct {p0, v6, v7, v4, v8}, Lcom/sec/daliviews/views/ContainerViewBase;->addViews(J[JI)V

    return-void
.end method

.method public animateBackgroundOffset(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ContainerViewBase;->animateBackgroundOffset(JFFF)V

    return-void
.end method

.method public canAddViewType(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedViewTypes:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearAllowedMode(I)V
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedModes:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedModes:I

    return-void
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/NativeViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutBase;->clone()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerViewBase;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected constraintSize(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ContainerViewBase;->constraintSize(JJZ)V

    return-void
.end method

.method public deleteAllViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->deleteAllViews(J)V

    return-void
.end method

.method public deleteView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->deleteViewAt(JI)V

    return-void
.end method

.method public deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->deleteView(JJ)V

    return-void
.end method

.method public detachAllViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->detachAllViews(J)V

    return-void
.end method

.method protected detachView(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->detachView(JI)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public detachView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->detachView(JJ)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/sec/daliviews/views/ContainerViewBase;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v6, v4, 0xff

    if-nez v6, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/sec/daliviews/views/ContainerViewBase;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/daliviews/views/ContainerViewBase;->resetTouchState()V

    :cond_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mGroupFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x80000

    and-int v28, v28, v29

    if-eqz v28, :cond_6

    const/4 v15, 0x1

    :goto_0
    if-nez v15, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/sec/daliviews/views/ContainerViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/sec/daliviews/views/ContainerViewBase;->resetCancelNextUpFlag(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v28

    if-nez v28, :cond_2

    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v6, v0, :cond_9

    :cond_2
    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mGroupFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x200000

    and-int v28, v28, v29

    if-eqz v28, :cond_a

    const/16 v24, 0x1

    :goto_3
    const/16 v21, 0x0

    const/4 v7, 0x0

    if-nez v9, :cond_12

    if-nez v20, :cond_12

    if-eqz v6, :cond_4

    if-eqz v24, :cond_3

    const/16 v28, 0x5

    move/from16 v0, v28

    if-eq v6, v0, :cond_4

    :cond_3
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v6, v0, :cond_12

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-eqz v24, :cond_b

    const/16 v28, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    shl-int v18, v28, v29

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->removePointersFromTouchTargets(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    const/4 v13, 0x1

    :goto_5
    if-nez v21, :cond_f

    if-eqz v13, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v12, v0, [Lcom/sec/daliviews/views/NativeViewBase;

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v29, v0

    aput-object v29, v12, v28

    invoke-direct/range {p0 .. p0}, Lcom/sec/daliviews/views/ContainerViewBase;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    add-int/lit8 v17, v13, -0x1

    :goto_6
    if-ltz v17, :cond_f

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->getChildDrawingOrder(II)I

    move-result v11

    :goto_7
    aget-object v10, v12, v11

    invoke-static {v10}, Lcom/sec/daliviews/views/ContainerViewBase;->canViewReceivePointerEvents(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->isTransformedTouchPointInView(FFLcom/sec/daliviews/views/NativeViewBase;Landroid/graphics/PointF;)Z

    move-result v28

    if-nez v28, :cond_e

    :cond_5
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v18, -0x1

    goto :goto_4

    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    :cond_d
    move/from16 v11, v17

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/daliviews/views/ContainerViewBase;->getTouchTarget(Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-result-object v21

    if-eqz v21, :cond_10

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    or-int v28, v28, v18

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    :cond_f
    :goto_8
    if-nez v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v21, v0

    :goto_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v21, v0

    goto :goto_9

    :cond_10
    invoke-static {v10}, Lcom/sec/daliviews/views/ContainerViewBase;->resetCancelNextUpFlag(Lcom/sec/daliviews/views/NativeViewBase;)Z

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLcom/sec/daliviews/views/NativeViewBase;I)Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->addTouchTarget(Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-result-object v21

    const/4 v7, 0x1

    goto :goto_8

    :cond_11
    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    or-int v28, v28, v18

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v28, v0

    if-nez v28, :cond_16

    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLcom/sec/daliviews/views/NativeViewBase;I)Z

    move-result v16

    :cond_13
    if-nez v9, :cond_14

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_14

    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v6, v0, :cond_1d

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/sec/daliviews/views/ContainerViewBase;->resetTouchState()V

    :cond_15
    :goto_a
    return v16

    :cond_16
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v25, v0

    :goto_b
    if-eqz v25, :cond_13

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    move-object/from16 v22, v0

    if-eqz v7, :cond_18

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_18

    const/16 v16, 0x1

    :cond_17
    move-object/from16 v23, v25

    move-object/from16 v25, v22

    goto :goto_b

    :cond_18
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sec/daliviews/views/ContainerViewBase;->resetCancelNextUpFlag(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v28

    if-nez v28, :cond_19

    if-eqz v20, :cond_1b

    :cond_19
    const/4 v8, 0x1

    :goto_c
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLcom/sec/daliviews/views/NativeViewBase;I)Z

    move-result v28

    if-eqz v28, :cond_1a

    const/16 v16, 0x1

    :cond_1a
    if-eqz v8, :cond_17

    if-nez v23, :cond_1c

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    :goto_d
    invoke-virtual/range {v25 .. v25}, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->recycle()V

    move-object/from16 v25, v22

    goto :goto_b

    :cond_1b
    const/4 v8, 0x0

    goto :goto_c

    :cond_1c
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    goto :goto_d

    :cond_1d
    if-eqz v24, :cond_15

    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v6, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/16 v28, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    shl-int v19, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->removePointersFromTouchTargets(I)V

    goto/16 :goto_a
.end method

.method public getDefaultMode()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mDefaultMode:I

    return v0
.end method

.method public getLayout()Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    return-object v0
.end method

.method public insertView(ILcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/daliviews/views/ContainerViewBase;->insertView(JIJ)V

    return-void
.end method

.method protected isTransformedTouchPointInView(FFLcom/sec/daliviews/views/NativeViewBase;Landroid/graphics/PointF;)Z
    .locals 1

    iget v0, p3, Lcom/sec/daliviews/views/NativeViewBase;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mInterceptTouchListener:Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mInterceptTouchListener:Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;

    invoke-interface {v0, p1}, Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewAttached(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public onViewDetached(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public removePointersFromTouchTargets(I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    iget v3, v2, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    iget v3, v2, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mFirstTouchTarget:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    :goto_1
    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->recycle()V

    move-object v2, v0

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    goto :goto_1

    :cond_1
    move-object v1, v2

    move-object v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public replaceView(Lcom/sec/daliviews/views/NativeViewBase;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ContainerViewBase;->replaceView(JJI)V

    return-void
.end method

.method public setAutoScrollSpeed(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setAutoScrollSpeed(JI)V

    return-void
.end method

.method public setBackgroundScale(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;->setBackgroundScale(JFF)V

    return-void
.end method

.method public setChildrenSensitive(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setChildrenSensitive(JZ)V

    return-void
.end method

.method public setContainerId(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setDbId(JI)V

    return-void
.end method

.method public setContainerType(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setContainerType(JI)V

    return-void
.end method

.method public setContainerTypeAndId(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;->setContainerTypeAndId(JII)V

    return-void
.end method

.method public setDefaultMode(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mDefaultMode:I

    iget v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedModes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mAllowedModes:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setDefaultMode(JI)V

    return-void
.end method

.method public setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/LayoutBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setLayout(JJ)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setLayoutDirection(JI)V

    return-void
.end method

.method public setMode(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->hasModes()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/views/IModedView;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getDefaultMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/daliviews/views/IModedView;->changeMode(I)V

    goto :goto_0
.end method

.method public setOnInterceptTouchListener(Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/ContainerViewBase;->mInterceptTouchListener:Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;

    return-void
.end method

.method public setRearrangementAlgorithm(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setRearrangementAlgorithm(JI)V

    return-void
.end method

.method public setRearrangementDragDelay(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->setRearrangementDragDelay(JF)V

    return-void
.end method

.method public setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setShadowEffect(JJ)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stopScrolling()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->stopScrolling(J)V

    return-void
.end method
