.class Lcom/android/server/am/DualScreenManagerService$MyHandler;
.super Landroid/os/Handler;
.source "DualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DualScreenManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/DualScreenManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService$MyHandler;->this$0:Lcom/android/server/am/DualScreenManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/DualScreenManagerService;Lcom/android/server/am/DualScreenManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenManagerService$MyHandler;-><init>(Lcom/android/server/am/DualScreenManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v7, "DualScreenManagerService"

    const-string/jumbo v8, "handleMessage() : MOVE_TASK_TO_FRONT_MSG"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v7, "dualscreen:displayid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v7, "dualscreen:activityoption"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :cond_0
    iget-object v7, p0, Lcom/android/server/am/DualScreenManagerService$MyHandler;->this$0:Lcom/android/server/am/DualScreenManagerService;

    invoke-virtual {v7, v5, v1, v2, v6}, Lcom/android/server/am/DualScreenManagerService;->handleMoveTaskToScreen(IILandroid/os/Bundle;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0

    :pswitch_1
    const-string v7, "DualScreenManagerService"

    const-string/jumbo v8, "handleMessage() : SWAP_TOP_TASK_MSG"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/DualScreenManagerService$MyHandler;->this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleSwapTopTask()V
    invoke-static {v7}, Lcom/android/server/am/DualScreenManagerService;->access$100(Lcom/android/server/am/DualScreenManagerService;)V

    goto :goto_0

    :pswitch_2
    const-string v7, "DualScreenManagerService"

    const-string/jumbo v8, "handleMessage() : REPORT_SCREEN_FOCUS_CHANGE_MSG"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/dualscreen/DualScreen;

    iget-object v7, p0, Lcom/android/server/am/DualScreenManagerService$MyHandler;->this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleReportScreenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    invoke-static {v7, v3}, Lcom/android/server/am/DualScreenManagerService;->access$200(Lcom/android/server/am/DualScreenManagerService;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0

    :pswitch_3
    const-string v7, "DualScreenManagerService"

    const-string/jumbo v8, "handleMessage() : FOCUS_SCREEN_MSG"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/dualscreen/DualScreen;

    iget-object v7, p0, Lcom/android/server/am/DualScreenManagerService$MyHandler;->this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    invoke-static {v7, v3}, Lcom/android/server/am/DualScreenManagerService;->access$300(Lcom/android/server/am/DualScreenManagerService;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0

    :pswitch_4
    const-string v7, "DualScreenManagerService"

    const-string/jumbo v8, "handleMessage() : REPORT_SHRINK_REQUEST_STATE_MSG"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/DualScreenManagerService$MyHandler;->this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleReportShrinkRequestedState(Z)V
    invoke-static {v7, v4}, Lcom/android/server/am/DualScreenManagerService;->access$400(Lcom/android/server/am/DualScreenManagerService;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
