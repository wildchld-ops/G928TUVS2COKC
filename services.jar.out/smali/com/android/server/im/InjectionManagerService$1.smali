.class Lcom/android/server/im/InjectionManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/im/InjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/im/InjectionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/im/InjectionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # setter for: Lcom/android/server/im/InjectionManagerService;->isBootComplete:Z
    invoke-static {v5, v6}, Lcom/android/server/im/InjectionManagerService;->access$002(Lcom/android/server/im/InjectionManagerService;Z)Z

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # getter for: Lcom/android/server/im/InjectionManagerService;->isBootAllParsingDone:Z
    invoke-static {v5}, Lcom/android/server/im/InjectionManagerService;->access$100(Lcom/android/server/im/InjectionManagerService;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->killAllParent()V
    invoke-static {v5}, Lcom/android/server/im/InjectionManagerService;->access$200(Lcom/android/server/im/InjectionManagerService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doAdd(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$300(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doRemove(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$400(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # getter for: Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/im/InjectionManagerService;->access$500(Lcom/android/server/im/InjectionManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-boolean v5, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doAdd(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$300(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService$1;->this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doRemove(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$400(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
