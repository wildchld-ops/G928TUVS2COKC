.class Lcom/android/server/am/OnceAllKill$1;
.super Ljava/lang/Thread;
.source "OnceAllKill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnceAllKill;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnceAllKill;

.field final synthetic val$am:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnceAllKill;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnceAllKill$1;->this$0:Lcom/android/server/am/OnceAllKill;

    iput-object p3, p0, Lcom/android/server/am/OnceAllKill$1;->val$am:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/OnceAllKill$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnceAllKill$1;->val$am:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->OAKMS:Lcom/android/server/am/OnceAllKillMonitorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnceAllKill$1;->val$am:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->OAKMS:Lcom/android/server/am/OnceAllKillMonitorService;

    invoke-virtual {v0}, Lcom/android/server/am/OnceAllKillMonitorService;->RunOnceAllKill()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnceAllKill$1;->this$0:Lcom/android/server/am/OnceAllKill;

    iget-object v1, p0, Lcom/android/server/am/OnceAllKill$1;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnceAllKill;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
