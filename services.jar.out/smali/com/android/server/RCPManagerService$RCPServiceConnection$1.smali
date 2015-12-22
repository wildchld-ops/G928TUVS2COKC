.class Lcom/android/server/RCPManagerService$RCPServiceConnection$1;
.super Ljava/lang/Object;
.source "RCPManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService$RCPServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService$RCPServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/RCPManagerService;->access$1400(Lcom/android/server/RCPManagerService;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget v7, v7, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v7, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget v7, v7, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    :cond_0
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v6, v6, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v6, v6, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->getAllPersonas()[I
    invoke-static {v6}, Lcom/android/server/RCPManagerService;->access$1300(Lcom/android/server/RCPManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "personas present size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    const-string/jumbo v7, "samsung.knox.intent.action.MODE_SWITCH_CHANGED"

    aget v8, v2, v1

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v6, v7, v8}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
