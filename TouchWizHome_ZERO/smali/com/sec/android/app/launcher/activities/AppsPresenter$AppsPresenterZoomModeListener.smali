.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsPresenterZoomModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method

.method private forceMovePage()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v2

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4302(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4402(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v2, -0x1

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4202(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4402(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    goto :goto_1
.end method


# virtual methods
.method public onZoomInComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->forceMovePage()V

    return-void
.end method

.method public onZoomOutComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;->forceMovePage()V

    return-void
.end method
