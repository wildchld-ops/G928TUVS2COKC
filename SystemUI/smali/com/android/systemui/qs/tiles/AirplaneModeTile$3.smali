.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z
    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$202(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1

    :cond_4
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V

    goto :goto_1
.end method
