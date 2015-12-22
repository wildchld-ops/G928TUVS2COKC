.class Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager$1;
.super Ljava/lang/Object;
.source "InternalRunnerManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 5

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    if-ne p1, v2, :cond_3

    const-string v2, "Received data for PHONE_STATE_MONITOR_SERVICE"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    const-string v2, "finalLcdOff"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "finalLcdOff"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, "Finally lcdOff is false"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->sendEvent(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {v2, p2}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->access$100(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "Finally lcdOff is true"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    if-ne p1, v2, :cond_1

    const-string v2, "Received data for ABNORMAL_PRESSURE_MONITOR"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
