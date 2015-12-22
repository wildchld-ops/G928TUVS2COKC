.class Lcom/android/settings/notification/NotificationAppList$2;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v25

    monitor-enter v25

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    # getter for: Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$200()Z

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "NotificationAppList"

    const-string v26, "Collecting apps..."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$800(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$900(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v24

    const/16 v26, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v14

    # getter for: Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$200()Z

    move-result v24

    if-eqz v24, :cond_1

    const-string v24, "NotificationAppList"

    const-string v26, "  launchable activities:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$200()Z

    move-result v24

    if-eqz v24, :cond_2

    const-string v24, "NotificationAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1000(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v18

    # getter for: Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$200()Z

    move-result v24

    if-eqz v24, :cond_4

    const-string v24, "NotificationAppList"

    const-string v26, "  config activities:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$200()Z

    move-result v24

    if-eqz v24, :cond_5

    const-string v24, "NotificationAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_b

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->excludeKnoxApp:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1100(Lcom/android/settings/notification/NotificationAppList;)[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_7

    aget-object v16, v6, v10

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mHideApp:Z
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1200(Lcom/android/settings/notification/NotificationAppList;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->hide_app_notification_list:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1300(Lcom/android/settings/notification/NotificationAppList;)[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_8

    aget-object v16, v6, v10

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1000(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/NotificationAppList;->access$1400(Lcom/android/settings/notification/NotificationAppList;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v11, v1}, Lcom/android/settings/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppList$Backend;)Lcom/android/settings/notification/NotificationAppList$AppRow;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1000(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/NotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$800(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$800(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v24

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$1500()Ljava/util/Comparator;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$500(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$800(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/notification/NotificationAppList$AppRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # invokes: Lcom/android/settings/notification/NotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationAppList;->access$1600(Lcom/android/settings/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$500(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/notification/NotificationAppList;->access$1800(Lcom/android/settings/notification/NotificationAppList;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/NotificationAppList;->access$1700(Lcom/android/settings/notification/NotificationAppList;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v22

    # getter for: Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/NotificationAppList;->access$200()Z

    move-result v24

    if-eqz v24, :cond_10

    const-string v24, "NotificationAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Collected "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$2;->this$0:Lcom/android/settings/notification/NotificationAppList;

    move-object/from16 v27, v0

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/notification/NotificationAppList;->access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " apps in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
