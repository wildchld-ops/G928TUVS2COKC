.class Lcom/android/server/am/OnceAllKillMonitorService$1;
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

    iput-object p1, p0, Lcom/android/server/am/OnceAllKillMonitorService$1;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$1;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$1;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    iget-object v2, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$1;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    invoke-virtual {v0}, Lcom/android/server/am/OnceAllKillMonitorService;->OAKshrinkServicesLocked()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
