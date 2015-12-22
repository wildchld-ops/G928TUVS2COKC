.class Lcom/sec/android/app/launcher/activities/HomePresenter$7;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPageLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureFinished(FF)V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSnapVelocity()F

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    move v0, v3

    if-nez v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v4, v5

    :cond_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPageNearestToCenterOfScreen(Lcom/sec/daliviews/layouts/PageLayout;F)I

    move-result v3

    if-eq v0, v3, :cond_1

    const-string v5, "HomePresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGestureFinished: currentpage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextpage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_1
    return-void
.end method
