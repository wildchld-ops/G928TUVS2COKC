.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V
    invoke-static {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V
    invoke-static {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    goto :goto_0
.end method
