.class Lcom/android/server/epm/PluginManagerService$PluginBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/PluginManagerService$PluginBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;


# direct methods
.method constructor <init>(Lcom/android/server/epm/PluginManagerService$PluginBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastReceiver intent action = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastReceiver packageName :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_3

    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastReceiver  ... pkgInfo = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_3

    iget-object v15, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v15, :cond_3

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastReceiver permissions = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v10, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v13, v3, v8

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastReceiver PackageInfo permission:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    # invokes: Lcom/android/server/epm/PluginManagerService$PluginBinder;->getModule(Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;
    invoke-static {v15, v13}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->access$200(Lcom/android/server/epm/PluginManagerService$PluginBinder;Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;

    move-result-object v7

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastReceiver helper = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/4 v15, 0x6

    iput v15, v11, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "packageName"

    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v15

    const-string v16, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v15}, Lcom/android/server/epm/IPluginHelper;->getHandler()Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Package Changed for aa packageName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    sget-object v15, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Package Changed for aa "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Received"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , Package Info "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/16 v15, 0x8

    iput v15, v11, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "packageName"

    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "isEnabled"

    iget-boolean v0, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v4, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v15

    const-string v16, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v15}, Lcom/android/server/epm/IPluginHelper;->getHandler()Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    return-void

    :cond_4
    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/IPluginHelper;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0, v12}, Lcom/android/server/epm/IPluginHelper;->onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_2
.end method
