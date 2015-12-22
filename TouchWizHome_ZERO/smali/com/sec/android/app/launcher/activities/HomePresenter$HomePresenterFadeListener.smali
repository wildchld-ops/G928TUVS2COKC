.class Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePresenterFadeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFadeInComplete()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFadeOutComplete()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->detachRootViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
