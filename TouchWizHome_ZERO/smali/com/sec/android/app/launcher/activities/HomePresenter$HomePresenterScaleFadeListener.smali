.class Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePresenterScaleFadeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    return-void
.end method


# virtual methods
.method public onScaleFadeInCompleted()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    return-void
.end method

.method public onScaleFadeOutCompleted()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->detachRootViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    return-void
.end method
