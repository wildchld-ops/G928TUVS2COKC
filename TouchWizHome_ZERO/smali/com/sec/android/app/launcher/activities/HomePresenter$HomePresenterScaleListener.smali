.class Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePresenterScaleListener"
.end annotation


# instance fields
.field private mExtending:Z

.field private mPinching:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mPinching:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mExtending:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a0260

    invoke-virtual {v4, v7, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    const v7, 0x7f0a0261

    invoke-virtual {v4, v7, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5500(Lcom/sec/android/app/launcher/activities/HomePresenter;)F

    move-result v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5500(Lcom/sec/android/app/launcher/activities/HomePresenter;)F

    move-result v7

    div-float v3, v2, v7

    cmpg-float v7, v3, v0

    if-gez v7, :cond_0

    move v5, v6

    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mPinching:Z

    mul-float v5, v0, v1

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageViewContainer;->setPinchState(Z)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v5, v7, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mPinching:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->canStartPageEditMode()Z
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_2
    return v6

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5500(Lcom/sec/android/app/launcher/activities/HomePresenter;)F

    move-result v7

    div-float v3, v7, v2

    cmpg-float v7, v3, v0

    if-gez v7, :cond_4

    move v5, v6

    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mExtending:Z

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5502(Lcom/sec/android/app/launcher/activities/HomePresenter;F)F

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mExtending:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/PageViewContainer;->setPinchState(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mPinching:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;->mExtending:Z

    return-void
.end method
