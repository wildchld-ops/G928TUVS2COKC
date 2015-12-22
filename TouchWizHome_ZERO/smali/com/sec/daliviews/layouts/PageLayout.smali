.class public Lcom/sec/daliviews/layouts/PageLayout;
.super Lcom/sec/daliviews/layouts/LayoutBase;
.source "PageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;,
        Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;,
        Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;,
        Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageLayout"


# instance fields
.field private mBackgroundEffectOpacity:F

.field private mBufferSize:I

.field private mColumns:I

.field private mCurrentScrollableState:Z

.field private mEnableBackgroundEffect:Z

.field private mGestureListener:Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsScrolling:Z

.field private mIsSnapping:Z

.field private mLastReportedPage:I

.field private mLayerHeight:I

.field private mMemoryOptimiseLevel:I

.field private mMiniPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;

.field private mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

.field private mRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    iput v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mRows:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mColumns:I

    iput v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBufferSize:I

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLayerHeight:I

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mEnableBackgroundEffect:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBackgroundEffectOpacity:F

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLastReportedPage:I

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mMemoryOptimiseLevel:I

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mCurrentScrollableState:Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/sec/daliviews/layouts/PageLayout;->mRows:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mColumns:I

    iput v3, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBufferSize:I

    iput v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLayerHeight:I

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mEnableBackgroundEffect:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBackgroundEffectOpacity:F

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    iput v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLastReportedPage:I

    iput v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mMemoryOptimiseLevel:I

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mCurrentScrollableState:Z

    sget-object v1, Lcom/sec/daliviews/R$styleable;->PageLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->PageLayout_android_rowCount:I

    iget v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mRows:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mRows:I

    sget v1, Lcom/sec/daliviews/R$styleable;->PageLayout_android_columnCount:I

    iget v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mColumns:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mColumns:I

    sget v1, Lcom/sec/daliviews/R$styleable;->PageLayout_bufferSize:I

    iget v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBufferSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBufferSize:I

    sget v1, Lcom/sec/daliviews/R$styleable;->PageLayout_backgroundEffectOpacity:I

    iget v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBackgroundEffectOpacity:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBackgroundEffectOpacity:F

    sget v1, Lcom/sec/daliviews/R$styleable;->PageLayout_enableBackgroundEffect:I

    iget-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mEnableBackgroundEffect:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mEnableBackgroundEffect:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    iget v4, p0, Lcom/sec/daliviews/layouts/PageLayout;->mRows:I

    iget v5, p0, Lcom/sec/daliviews/layouts/PageLayout;->mColumns:I

    iget v6, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBufferSize:I

    iget-boolean v7, p0, Lcom/sec/daliviews/layouts/PageLayout;->mEnableBackgroundEffect:Z

    iget v8, p0, Lcom/sec/daliviews/layouts/PageLayout;->mBackgroundEffectOpacity:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/PageLayout;->initParams(JIIIZF)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/daliviews/layouts/PageLayout;)Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mMiniPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;

    return-object v0
.end method

.method private native applyOrientationChange(JI)V
.end method

.method private native cancelScroll(J)V
.end method

.method private native enablePageShadow(JFFFF)V
.end method

.method private native forceFirstVisibleColumn(JI)V
.end method

.method private native getCurrentPage(J)I
.end method

.method private native getCurrentScrollPage(J)I
.end method

.method private native getNumberOfPages(J)I
.end method

.method private native getPage(JI)Lcom/sec/daliviews/views/PageView;
.end method

.method private native getPageNumber(JJ)I
.end method

.method private native initParams(JIIIZF)V
.end method

.method private native moveToPage(JIF)V
.end method

.method private native setAccessibilityMode(JZ)V
.end method

.method private native setBackgroundEffectWindowSize(JI)V
.end method

.method private native setDynamicSnapDurationThreshold(JF)V
.end method

.method private native setFastScrollTextView(JJ)V
.end method

.method private native setFlickDuration(JF)V
.end method

.method private native setFlickSpeedCoefficient(JF)V
.end method

.method private native setFrictionCoefficient(JF)V
.end method

.method private native setGridSize(JII)V
.end method

.method private native setHorizontalPanPreCheckValues(JFFFFF)V
.end method

.method private native setHorizontalScrollingPreCheckEnabled(JZ)V
.end method

.method private native setInitialPage(JI)V
.end method

.method private native setMaxFlickSpeed(JF)V
.end method

.method private native setMemoryOptimiseLevel(JI)V
.end method

.method private native setMinimumDistanceForFlick(JF)V
.end method

.method private native setMinimumSpeedForFlick(JF)V
.end method

.method private native setNormalModeMargin(JI)V
.end method

.method private native setOuterPageOpacity(JF)V
.end method

.method private native setScrollWrap(JZZZZZ)V
.end method

.method private native setScrolling(JZ)V
.end method

.method private native setShadowEffect(JJ)V
.end method

.method private native setSnapDuration(JF)V
.end method

.method private native setWarpEffectProperties(JZFFFF)V
.end method

.method private native setZaxisEffectDisable(JZ)V
.end method

.method private native snapToCurrentPage(JF)V
.end method

.method private native triggerScrollEffectChange(JI)V
.end method

.method private native updateGridSize(JII)V
.end method


# virtual methods
.method protected OnLayoutEventCallback(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    if-eqz v1, :cond_1

    move v0, p2

    if-ne p1, v5, :cond_2

    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCROLLING_PRE_STARTED on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-interface {v1}, Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;->onScrollPreStart()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCROLLING_STARTED on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/daliviews/layouts/PageLayout$1;

    invoke-direct {v2, p0}, Lcom/sec/daliviews/layouts/PageLayout$1;-><init>(Lcom/sec/daliviews/layouts/PageLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v5, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    iput-boolean v4, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCROLLING_COMPLETED on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scrollState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", snapState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/daliviews/layouts/PageLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/daliviews/layouts/PageLayout$2;-><init>(Lcom/sec/daliviews/layouts/PageLayout;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v4, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    iput-boolean v4, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAGE_MOVE_STARTED on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/daliviews/layouts/PageLayout$3;

    invoke-direct {v2, p0}, Lcom/sec/daliviews/layouts/PageLayout$3;-><init>(Lcom/sec/daliviews/layouts/PageLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HORIZONTAL_SCROLLING_THRESHOLD_INDICATION on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLastReportedPage:I

    iget-object v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/daliviews/layouts/PageLayout$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/daliviews/layouts/PageLayout$4;-><init>(Lcom/sec/daliviews/layouts/PageLayout;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAGE_SNAP_STARTED on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    if-eqz v1, :cond_8

    iput-boolean v5, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    goto/16 :goto_0

    :cond_8
    const-string v1, "PageLayout"

    const-string v2, "Snapping outside of scrolling"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v1, "PageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public applyOrientationChange(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->applyOrientationChange(JI)V

    return-void
.end method

.method public cancelScroll()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->cancelScroll(J)V

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    return-void
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->destroy()V

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public enablePageShadow(FFFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/layouts/PageLayout;->enablePageShadow(JFFFF)V

    return-void
.end method

.method public forceFirstVisibleColumn(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->forceFirstVisibleColumn(JI)V

    return-void
.end method

.method public getCurrentPage()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage(J)I

    move-result v0

    return v0
.end method

.method public getCurrentScrollPage()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentScrollPage(J)I

    move-result v0

    return v0
.end method

.method public getNumberOfPages()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages(J)I

    move-result v0

    return v0
.end method

.method public getOnGestureListener()Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mGestureListener:Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;

    return-object v0
.end method

.method public getOnMiniPageShouldUpdateListener()Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mMiniPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;

    return-object v0
.end method

.method public getOnPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method public getPage(I)Lcom/sec/daliviews/views/PageView;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(JI)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    return-object v0
.end method

.method public getPageAnimLayer()J
    .locals 4

    new-instance v0, Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->setClipping(Z)V

    iget v1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLayerHeight:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayerLocation(I)V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ClippedContainerView;->getPeer()J

    move-result-wide v2

    return-wide v2
.end method

.method public getPageNumber(Lcom/sec/daliviews/views/PageView;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/PageView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->getPageNumber(JJ)I

    move-result v0

    return v0
.end method

.method public getPagePeer(I)J
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(JI)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->getPeer()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getScrollableState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mCurrentScrollableState:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    return v0
.end method

.method public isSnapping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    return v0
.end method

.method public moveToPage(IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(JIF)V

    return-void
.end method

.method public onGestureFinished(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mGestureListener:Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mGestureListener:Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;->onGestureFinished(FF)V

    :cond_0
    return-void
.end method

.method public onOvershootNotification(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;->onOvershootNotification(F)V

    :cond_0
    return-void
.end method

.method protected onPageVisibilityChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;->onPageVisibilityChanged(II)V

    :cond_0
    return-void
.end method

.method protected resetPeer()V
    .locals 2

    invoke-super {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->resetPeer()V

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setAccessibilityMode(JZ)V

    return-void
.end method

.method public setAnimLayerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLayerHeight:I

    return-void
.end method

.method public setBackgroundEffectWindowSize(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setBackgroundEffectWindowSize(JI)V

    return-void
.end method

.method public setDisableLayerUpdate(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/utils/LayerManager;->setDisableLayerUpdate(Z)V

    return-void
.end method

.method public setDynamicSnapDurationThreshold(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setDynamicSnapDurationThreshold(JF)V

    return-void
.end method

.method public setFastScrollTextView(Lcom/sec/daliviews/views/TextView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setFastScrollTextView(JJ)V

    return-void
.end method

.method public setFlickDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickDuration(JF)V

    return-void
.end method

.method public setFlickSpeedCoefficient(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickSpeedCoefficient(JF)V

    return-void
.end method

.method public setFrictionCoefficient(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setFrictionCoefficient(JF)V

    return-void
.end method

.method public setGridSize(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(JII)V

    return-void
.end method

.method public setHorizontalPanPreCheckValues(FFFFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/PageLayout;->setHorizontalPanPreCheckValues(JFFFFF)V

    return-void
.end method

.method public setHorizontalScrollingPreCheckEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setHorizontalScrollingPreCheckEnabled(JZ)V

    return-void
.end method

.method public setInitialPage(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setInitialPage(JI)V

    return-void
.end method

.method public setMaxFlickSpeed(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setMaxFlickSpeed(JF)V

    return-void
.end method

.method public setMemoryOptimiseLevel(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mMemoryOptimiseLevel:I

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setMemoryOptimiseLevel(JI)V

    return-void
.end method

.method public setMinimumDistanceForFlick(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setMinimumDistanceForFlick(JF)V

    return-void
.end method

.method public setMinimumSpeedForFlick(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setMinimumSpeedForFlick(JF)V

    return-void
.end method

.method public setNormalModeMargin(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setNormalModeMargin(JI)V

    return-void
.end method

.method public setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mGestureListener:Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;

    return-void
.end method

.method public setOnMiniPageShouldUpdateListener(Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mMiniPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mPageListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-void
.end method

.method public setOuterPageOpacity(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setOuterPageOpacity(JF)V

    return-void
.end method

.method public setScrollEffect(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->triggerScrollEffectChange(JI)V

    return-void
.end method

.method public setScrollWrap(ZZZZZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(JZZZZZ)V

    return-void
.end method

.method public setScrolling(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/layouts/PageLayout;->mCurrentScrollableState:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(JZ)V

    return-void
.end method

.method public setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setShadowEffect(JJ)V

    :cond_0
    return-void
.end method

.method public setSnapDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setSnapDuration(JF)V

    return-void
.end method

.method public setWarpEffectProperties(ZFFFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/PageLayout;->setWarpEffectProperties(JZFFFF)V

    return-void
.end method

.method public setZaxisEffectDisable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setZaxisEffectDisable(JZ)V

    return-void
.end method

.method public snapToCurrentPage(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mIsSnapping:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/layouts/PageLayout;->mLastReportedPage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_1
    return-void
.end method

.method public updateGridSize(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->updateGridSize(JII)V

    return-void
.end method

.method public updateLayers()V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    return-void
.end method
