.class Lcom/sec/android/app/launcher/activities/AppsPresenter$21;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->setUninstallBadge(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field final synthetic val$changeMode:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->val$changeMode:Z

    iput-boolean p3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->val$changeMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V
    invoke-static {v5, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5300(Lcom/sec/android/app/launcher/activities/AppsPresenter;Ljava/util/List;)V

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    instance-of v5, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_1

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->val$show:Z

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->val$changeMode:Z

    invoke-virtual {v1, v2, v5, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    goto :goto_0

    :cond_2
    instance-of v5, v2, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;->val$changeMode:Z

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateBadge(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
