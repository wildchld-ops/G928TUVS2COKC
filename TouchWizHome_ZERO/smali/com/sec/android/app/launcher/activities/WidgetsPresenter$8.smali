.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->sortItems()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->resetItems(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshPopupMenu()V

    return-void
.end method
