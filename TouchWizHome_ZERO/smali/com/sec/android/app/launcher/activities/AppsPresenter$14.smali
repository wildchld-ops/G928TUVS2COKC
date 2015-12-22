.class Lcom/sec/android/app/launcher/activities/AppsPresenter$14;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachAdapterIfNeeded()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3102(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    :cond_1
    return-void
.end method
