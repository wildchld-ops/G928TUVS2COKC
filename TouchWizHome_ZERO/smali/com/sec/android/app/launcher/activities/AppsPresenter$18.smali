.class Lcom/sec/android/app/launcher/activities/AppsPresenter$18;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->onHomeItemDeleted(Lcom/sec/android/app/launcher/data/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field final synthetic val$currentPage:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;->val$currentPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;->val$currentPage:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    return-void
.end method
