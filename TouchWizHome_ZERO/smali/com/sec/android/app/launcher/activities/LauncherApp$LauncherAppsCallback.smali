.class Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "LauncherApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherAppsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherApp;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherApp;Lcom/sec/android/app/launcher/activities/LauncherApp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;-><init>(Lcom/sec/android/app/launcher/activities/LauncherApp;)V

    return-void
.end method

.method private handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 10

    if-nez p2, :cond_1

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "handlePackageChanged packageName is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v4, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "extra_packagename"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_2

    const-string v6, "extra_user"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v6, "user"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    if-eqz p3, :cond_4

    if-eqz v5, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, p3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_0

    :cond_7
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 14

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPackageChanged - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, p2

    invoke-direct {p0, v10, p1, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    if-eqz v4, :cond_1

    instance-of v10, v4, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v10, :cond_1

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->isBound()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->this$0:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v11

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetView()Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 7

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPackagesAvailable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {p0, v4, v3, p2}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p0, v4, v3, p2}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 7

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPackagesUnavailable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p0, v4, v3, p2}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;->handlePackageChanged(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
