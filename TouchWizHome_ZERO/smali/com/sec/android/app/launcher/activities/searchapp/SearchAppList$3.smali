.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;
.super Landroid/content/BroadcastReceiver;
.source "SearchAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # invokes: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setPreCheckedOfFolderApp()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$300(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->runFilter()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;->getAdapter()Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;->getAdapter()Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->startAsyncTask()V

    :cond_2
    return-void
.end method
