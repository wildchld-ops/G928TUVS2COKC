.class Lcom/sec/android/app/launcher/activities/HomePresenter$3;
.super Landroid/view/ScaleGestureDetector;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->initialiseZoomedOutPageMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrollDisabled:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->scrollDisabled:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v5, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v3, v4, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v5, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v3, v4, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageIndicator;->isFastScrollActive()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->scrollDisabled:Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDownMotionX:F
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3402(Lcom/sec/android/app/launcher/activities/HomePresenter;F)F

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v5, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->scrollDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDownMotionX:F
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3400(Lcom/sec/android/app/launcher/activities/HomePresenter;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v0, v3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagingTouchSlop:I
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3600(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v4

    if-le v0, v4, :cond_6

    move v1, v2

    :cond_6
    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsPageMoving:Z
    invoke-static {v3, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3502(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsPageMoving:Z
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->scrollDisabled:Z

    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    goto :goto_1
.end method
