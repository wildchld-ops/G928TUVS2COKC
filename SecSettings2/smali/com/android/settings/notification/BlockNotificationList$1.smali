.class Lcom/android/settings/notification/BlockNotificationList$1;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/BlockNotificationList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v26

    monitor-enter v26

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "BlockNotificationList"

    const-string v27, "Collecting apps..."

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$300(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;

    move-result-object v23

    const/16 v27, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v14

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v23

    if-eqz v23, :cond_1

    const-string v23, "BlockNotificationList"

    const-string v27, "  launchable activities:"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v23, "BlockNotificationList"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "    "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v27

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/BlockNotificationList;->access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v23

    if-eqz v23, :cond_3

    const-string v23, "XPC"

    const-string v27, "continue"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v23

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    :cond_3
    :try_start_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v19

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v23

    if-eqz v23, :cond_5

    const-string v23, "BlockNotificationList"

    const-string v27, "  config activities:"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v23

    if-eqz v23, :cond_6

    const-string v23, "BlockNotificationList"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "    "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v27

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/BlockNotificationList;->access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v23

    if-eqz v23, :cond_7

    const-string v23, "XPC"

    const-string v27, "222 continue"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_d

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$600(Lcom/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_9

    aget-object v16, v6, v10

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mHideApp:Z
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$700(Lcom/android/settings/notification/BlockNotificationList;)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$800(Lcom/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_a

    aget-object v16, v6, v10

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/notification/BlockNotificationList;->access$900(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v11, v1}, Lcom/android/settings/notification/BlockNotificationList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppList$Backend;)Lcom/android/settings/notification/BlockNotificationList$AppRow;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/BlockNotificationList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v23

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$1000()Ljava/util/Comparator;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$1100(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/notification/BlockNotificationList;->access$1200(Lcom/android/settings/notification/BlockNotificationList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/settings/notification/BlockNotificationList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$1100(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/notification/BlockNotificationList;->access$1400(Lcom/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/notification/BlockNotificationList;->access$1300(Lcom/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    sub-long v8, v28, v24

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v23

    if-eqz v23, :cond_12

    const-string v23, "BlockNotificationList"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Collected "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " apps in "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mSortedRows.size=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
