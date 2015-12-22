.class public Lcom/sec/android/cover/sviewcover/SViewCoverPager;
.super Lcom/sec/android/cover/widget/PagedView;
.source "SViewCoverPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverPager"


# instance fields
.field private mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mEnableTouch:Z

.field private mLastRegisteredPage:I

.field private mSnapTo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    return-void
.end method

.method private isBlockedKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v1, "SViewCoverPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not blocked, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string v1, "SViewCoverPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocked, action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-lt v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

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

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->isBlockedKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraPage(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_layout:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyPageSwitching(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    if-eq v3, p1, :cond_2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    :cond_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    :cond_1
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    :cond_2
    return-void
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v2, -0x1

    invoke-super/range {p0 .. p5}, Lcom/sec/android/cover/widget/PagedView;->onLayout(ZIIII)V

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    iput v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const-string v0, "SViewCoverPager"

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

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "SViewCoverPager"

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "SViewCoverPager"

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public scheduleSnapping(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->requestLayout()V

    return-void
.end method

.method public scheduleSnapping(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->scheduleSnapping(I)V

    return-void
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    return-void
.end method
