.class public Lcom/sec/daliviews/views/PageIndicator;
.super Lcom/sec/daliviews/views/ItemView;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/PageIndicator$GestureListener;,
        Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mCurrentPage:I

.field private mCurrentPageDescription:Ljava/lang/String;

.field private mExtraPageIndicatorClickListener:Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIndicatorImg:Ljava/lang/String;

.field private mIsFastScrolling:Z

.field private mMultiFinger:Z

.field private mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

.field private mSelf:Lcom/sec/daliviews/views/PageIndicator;

.field private mTextView:Lcom/sec/daliviews/views/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    iput v2, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPage:I

    iput-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPageDescription:Ljava/lang/String;

    const-string v0, "asset:circle.png"

    iput-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mIndicatorImg:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageIndicator;->mIsFastScrolling:Z

    iput-object p0, p0, Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;

    iput-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z

    iput-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mExtraPageIndicatorClickListener:Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/PageIndicator;->initDescriptions(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v8, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPage:I

    iput-object v7, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPageDescription:Ljava/lang/String;

    const-string v6, "asset:circle.png"

    iput-object v6, p0, Lcom/sec/daliviews/views/PageIndicator;->mIndicatorImg:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/daliviews/views/PageIndicator;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v7, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    iput-boolean v8, p0, Lcom/sec/daliviews/views/PageIndicator;->mIsFastScrolling:Z

    iput-object p0, p0, Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;

    iput-object v7, p0, Lcom/sec/daliviews/views/PageIndicator;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v8, p0, Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z

    iput-object v7, p0, Lcom/sec/daliviews/views/PageIndicator;->mExtraPageIndicatorClickListener:Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;

    sget-object v6, Lcom/sec/daliviews/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lcom/sec/daliviews/R$styleable;->PageIndicator_indicatorColor:I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v6, Lcom/sec/daliviews/R$styleable;->PageIndicator_indicatorUnselectedColor:I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v6, Lcom/sec/daliviews/R$styleable;->PageIndicator_indicatorWidth:I

    const/16 v7, 0x5a

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v6, Lcom/sec/daliviews/R$styleable;->PageIndicator_indicatorPaddingRatio:I

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v6, Lcom/sec/daliviews/R$styleable;->PageIndicator_indicatorInitPosition:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorColor(I)V

    invoke-virtual {p0, v3}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorUnselectedColor(I)V

    invoke-virtual {p0, v4}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorWidth(I)V

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorPaddingRatio(I)V

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorInitPosition(I)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/PageIndicator;->initDescriptions(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/daliviews/views/PageIndicator;)Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/daliviews/views/PageIndicator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z

    return v0
.end method

.method private native cancelFastScroll(J)V
.end method

.method private native getNumberOfPages(J)I
.end method

.method private initDescriptions(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/sec/daliviews/R$string;->page_indicator_content_description_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPageDescription:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/PageIndicator;->initGestures(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/PageIndicator;->setEventTransformToLocal(Z)V

    return-void
.end method

.method private initGestures(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/sec/daliviews/views/PageIndicator$1;

    new-instance v1, Lcom/sec/daliviews/views/PageIndicator$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/daliviews/views/PageIndicator$GestureListener;-><init>(Lcom/sec/daliviews/views/PageIndicator;Lcom/sec/daliviews/views/PageIndicator$1;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/daliviews/views/PageIndicator$1;-><init>(Lcom/sec/daliviews/views/PageIndicator;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private native initPageIndicator(JII)V
.end method

.method private native linkLayout(JJ)V
.end method

.method private native setFastScrollSensitivityBoundary(JI)V
.end method

.method private native setIndicatorColor(JI)V
.end method

.method private native setIndicatorFastScrollImage(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setIndicatorGrowBy(JI)V
.end method

.method private native setIndicatorInitPosition(JI)V
.end method

.method private native setIndicatorPaddingRatio(JI)V
.end method

.method private native setIndicatorUnselectedColor(JI)V
.end method

.method private native setIndicatorWidth(JI)V
.end method

.method private native setMemoryOptimiseLevel(JI)V
.end method

.method private native setPageScrollDuration(JF)V
.end method

.method private native setPageSwapDuration(JFF)V
.end method


# virtual methods
.method public cancelFastScroll()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->cancelFastScroll(J)V

    return-void
.end method

.method public clickExtraPageIndicator(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mExtraPageIndicatorClickListener:Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mExtraPageIndicatorClickListener:Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;

    invoke-interface {v0, p1}, Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;->onClickExtraPageIndicator(I)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

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

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public disableFastScrollText()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mIsFastScrolling:Z

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPage:I

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFastScrollActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mIsFastScrolling:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPageDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPageDescription:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/daliviews/views/PageIndicator;->getNumberOfPages(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->onUp(Landroid/view/MotionEvent;)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->isFastScrollActive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->cancelFastScroll()V

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z

    :cond_5
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public reloadDescriptions(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/sec/daliviews/R$string;->page_indicator_content_description_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPageDescription:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/PageIndicator;->mCurrentPage:I

    return-void
.end method

.method public setExtraPageIndicatorClickListener(Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageIndicator;->mExtraPageIndicatorClickListener:Lcom/sec/daliviews/views/PageIndicator$ExtraPageIndicatorClickListener;

    return-void
.end method

.method public setFastScrollSensitivityBoundary(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setFastScrollSensitivityBoundary(JI)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorColor(JI)V

    return-void
.end method

.method public setIndicatorFastScrollImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorFastScrollImage(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIndicatorGrowBy(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorGrowBy(JI)V

    return-void
.end method

.method public setIndicatorInitPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorInitPosition(JI)V

    return-void
.end method

.method public setIndicatorPaddingRatio(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorPaddingRatio(JI)V

    return-void
.end method

.method public setIndicatorUnselectedColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorUnselectedColor(JI)V

    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorWidth(JI)V

    return-void
.end method

.method public setMemoryOptimiseLevel(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setMemoryOptimiseLevel(JI)V

    return-void
.end method

.method public setPageLayout(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/daliviews/views/PageIndicator;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/PageIndicator;->linkLayout(JJ)V

    return-void
.end method

.method public setPageNumber(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mIsFastScrolling:Z

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    goto :goto_0
.end method

.method public setPageScrollDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageIndicator;->setPageScrollDuration(JF)V

    return-void
.end method

.method public setPageSwapDuration(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageIndicator;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageIndicator;->setPageSwapDuration(JFF)V

    return-void
.end method

.method public setTextView(Lcom/sec/daliviews/views/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/daliviews/views/PageIndicator;->mTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setFastScrollTextView(Lcom/sec/daliviews/views/TextView;)V

    :cond_0
    return-void
.end method
