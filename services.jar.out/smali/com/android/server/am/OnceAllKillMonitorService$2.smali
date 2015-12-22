.class Lcom/android/server/am/OnceAllKillMonitorService$2;
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

    iput-object p1, p0, Lcom/android/server/am/OnceAllKillMonitorService$2;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$2;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    # invokes: Lcom/android/server/am/OnceAllKillMonitorService;->RegistOAKAlarm()V
    invoke-static {v0}, Lcom/android/server/am/OnceAllKillMonitorService;->access$000(Lcom/android/server/am/OnceAllKillMonitorService;)V

    return-void
.end method
