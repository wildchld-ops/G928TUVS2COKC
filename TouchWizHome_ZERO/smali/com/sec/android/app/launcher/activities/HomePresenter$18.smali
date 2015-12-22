.class Lcom/sec/android/app/launcher/activities/HomePresenter$18;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->onReplaceFolderToItems(Lcom/sec/android/app/launcher/data/FolderItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field final synthetic val$fItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Ljava/util/List;Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->val$fItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->val$items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$18;->val$fItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method
