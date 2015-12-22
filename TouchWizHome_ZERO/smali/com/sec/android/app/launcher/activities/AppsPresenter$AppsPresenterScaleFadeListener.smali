.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsPresenterScaleFadeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method


# virtual methods
.method public onScaleFadeInCompleted()V
    .locals 7

    const/4 v6, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3402(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->detachRootViewIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_8

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAppsRoot onFadeInComplete() opacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getOpacity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFadeInComplete() visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getOpacity()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_9

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAppsContentRoot onFadeInComplete() opacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getOpacity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFadeInComplete() visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getOpacity()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    if-eqz v0, :cond_a

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPagedAdapterView onFadeInComplete() opacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedAdapterView;->getOpacity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFadeInComplete() visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedAdapterView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->getOpacity()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setOpacity(F)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v0

    if-nez v0, :cond_7

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adapter is not attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFadeInComplete() mAppsRoot  Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFadeInComplete() mAppsContentRoot  Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFadeInComplete() mPagedAdapterView  Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onScaleFadeOutCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3402(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    return-void
.end method
