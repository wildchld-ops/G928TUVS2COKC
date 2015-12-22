.class public Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LiveIconUpdateReceiver.java"


# static fields
.field private static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field private static final ACTION_MIDNIGHT_LIVEICONUPDATE:Ljava/lang/String; = "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"


# instance fields
.field private mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

.field private mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    iput-object v0, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    return-void
.end method

.method private TotriggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    instance-of v8, v5, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->stopAnim()V

    goto :goto_0

    :cond_2
    instance-of v8, v5, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v8, :cond_0

    check-cast v5, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->isLiveView()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v11, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_0
    sget-boolean v11, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v11, 0x1

    invoke-direct {p0, v0, v11}, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->TotriggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/launcher/receivers/LiveIconUpdateReceiver;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/daliviews/views/Item;

    instance-of v11, v7, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v11, :cond_3

    invoke-virtual {v7}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v11

    if-ne v11, v1, :cond_3

    invoke-virtual {v7}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_0

    :cond_3
    instance-of v11, v7, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v11, :cond_2

    check-cast v7, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->isLiveView()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1

    :cond_5
    return-void
.end method
