.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->sortItems()V
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PagedListAdapter;->isValidPeer()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PagedListAdapter;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/PagedListAdapter;->addItems(Ljava/util/List;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1700(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetView()Lcom/sec/daliviews/views/IconView;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->createItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/IconView;

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1700(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    move-result-object v5

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshPopupMenu()V

    return-void
.end method
