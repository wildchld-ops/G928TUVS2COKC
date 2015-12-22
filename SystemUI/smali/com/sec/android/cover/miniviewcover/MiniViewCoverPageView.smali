.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;
.super Lcom/sec/android/cover/widget/PagedView;
.source "MiniViewCoverPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

.field private mEnableTouch:Z

.field private mLatestPage:I

.field private mSnapTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    iput v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    if-lt v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v2, -0x1

    invoke-super/range {p0 .. p5}, Lcom/sec/android/cover/widget/PagedView;->onLayout(ZIIII)V

    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->snapToPage(I)V

    iput v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[widthMeasureSpec, heightMeasureSpec] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/sec/android/cover/widget/PagedView;->onMeasure(II)V

    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    if-eq v4, p2, :cond_2

    iget v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    iput p2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;

    invoke-interface {v0, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;->onActive(Z)V

    :cond_0
    if-eqz v1, :cond_1

    instance-of v4, v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;

    if-eqz v4, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;->onActive(Z)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCoverView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCoverView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v4, p2, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToPage(IZ)V

    :cond_2
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 3

    iget v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    if-eq v2, p2, :cond_0

    iget v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView$SViewCoverPageCallback;->onActive(Z)V

    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v2, "onTouchEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v1, "event is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_MOVE return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public scheduleSnapping(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->requestLayout()V

    return-void
.end method

.method public scheduleSnapping(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->scheduleSnapping(I)V

    return-void
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCoverView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    return-void
.end method
