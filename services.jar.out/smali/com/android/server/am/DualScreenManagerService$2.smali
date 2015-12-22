.class Lcom/android/server/am/DualScreenManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DualScreenManagerService;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/DualScreenManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService$2;->this$0:Lcom/android/server/am/DualScreenManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "DualScreenManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive() action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.DUALSCREEN_TEST_SCREENOFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService$2;->this$0:Lcom/android/server/am/DualScreenManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/DualScreenManagerService;->reportShrinkRequestState(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.DUALSCREEN_TEST_SCREENON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService$2;->this$0:Lcom/android/server/am/DualScreenManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DualScreenManagerService;->reportShrinkRequestState(Z)V

    goto :goto_0
.end method
