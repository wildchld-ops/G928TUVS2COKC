.class Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "boradCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wlan.only.status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # getter for: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z
    invoke-static {v1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$000(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DbAutoUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlan only value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->startAutoUpdate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->stopAutoUpdate()V

    goto :goto_0
.end method
