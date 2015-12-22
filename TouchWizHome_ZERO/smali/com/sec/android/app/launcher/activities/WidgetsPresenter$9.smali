.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2100(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2000(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->isFolderItem()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->clearSibling()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2100(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2000(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->getWidgetListItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1602(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshWidgetList()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1802(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
