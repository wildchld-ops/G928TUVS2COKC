.class final Lcom/android/server/execute/ExecuteManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/ExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/ExecuteManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/execute/ExecuteManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/execute/ExecuteManagerService;Lcom/android/server/execute/ExecuteManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;-><init>(Lcom/android/server/execute/ExecuteManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->onUserRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/execute/ExecuteManagerService;->access$400(Lcom/android/server/execute/ExecuteManagerService;I)V

    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$300(Lcom/android/server/execute/ExecuteManagerService;)V

    return-void
.end method
