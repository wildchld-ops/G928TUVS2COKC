.class Lcom/sec/android/app/launcher/activities/AppsPresenter$23;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateAppsPosAndSaveDB(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->setCustomPositionsforFlexibleGrid(Ljava/util/List;)Ljava/util/List;
    invoke-static {v5, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5400(Lcom/sec/android/app/launcher/activities/AppsPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v8}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAppsPosAndSaveDB() updatePageLayout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/FixedPageView;

    move-object v0, v5

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->updatePageLayout(Lcom/sec/daliviews/views/FixedPageView;)V
    invoke-static {v5, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5500(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAppsPosAndSaveDB() mAppsListRowCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAppsListColumnCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAppsPosAndSaveDB() cell size w/h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSizeUsingDefaultMode()V
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$6000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-virtual {v5, v8, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    return-void
.end method
