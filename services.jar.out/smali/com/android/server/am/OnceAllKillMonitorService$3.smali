.class Lcom/android/server/am/OnceAllKillMonitorService$3;
.super Landroid/content/BroadcastReceiver;
.source "OnceAllKillMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnceAllKillMonitorService;->RegistReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnceAllKillMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnceAllKillMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnceAllKillMonitorService$3;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "OnceAllKillMornitor"

    const-string v1, "SA_SAMP regist receiver for OnceAllKill"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$3;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/OnceAllKill;->schedule(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
