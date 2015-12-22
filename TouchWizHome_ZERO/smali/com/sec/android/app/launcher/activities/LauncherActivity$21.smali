.class Lcom/sec/android/app/launcher/activities/LauncherActivity$21;
.super Landroid/content/BroadcastReceiver;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v11, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "LauncherActivity"

    const-string v12, "DateChangedReceiver - DATE_CHANGED "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v11, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v12, 0x1

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity;->TotriggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V
    invoke-static {v11, v0, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$3900(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/daliviews/views/Adapter;Z)V

    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/daliviews/views/Item;

    instance-of v11, v7, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v11

    if-ne v11, v1, :cond_4

    invoke-virtual {v7}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_0

    :cond_4
    instance-of v11, v7, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v11, :cond_3

    check-cast v7, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->isLiveView()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1
.end method
