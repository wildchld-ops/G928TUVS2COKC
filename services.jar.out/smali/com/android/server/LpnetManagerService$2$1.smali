.class Lcom/android/server/LpnetManagerService$2$1;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$2;

.field final synthetic val$isReInstall:Z

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$varAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$2;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iput-object p2, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/LpnetManagerService$2$1;->val$isReInstall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$isReInstall:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    :try_start_1
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    new-instance v10, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v12, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v12, v12, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    # setter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9, v10}, Lcom/android/server/LpnetManagerService;->access$402(Lcom/android/server/LpnetManagerService;Lcom/android/server/LpnetManagerService$DBManager;)Lcom/android/server/LpnetManagerService$DBManager;

    :cond_0
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/LpnetManagerService$DBManager;->dbDelete(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rowsDeleted : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :catch_0
    move-exception v3

    const-string v9, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception on handling DB : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$600(Lcom/android/server/LpnetManagerService;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_3
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v11, "1"

    # invokes: Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v5, v11}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUserFSPackages : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v12, v12, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v10

    goto/16 :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    :cond_6
    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_4
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v4, :cond_2

    :cond_9
    const/4 v1, 0x0

    :try_start_5
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    if-eqz v1, :cond_c

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_6
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_a
    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Lcom/android/server/LpnetManagerService;->access$1500(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_7
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v10

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v9

    :catchall_3
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v9

    :catchall_4
    move-exception v9

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v9

    :cond_b
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_a
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v10

    goto/16 :goto_1

    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v9

    :cond_c
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_b
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v10

    goto/16 :goto_1

    :catchall_6
    move-exception v9

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v9

    :catch_1
    move-exception v9

    goto/16 :goto_2
.end method
