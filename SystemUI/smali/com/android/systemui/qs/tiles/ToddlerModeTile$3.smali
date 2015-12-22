.class Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;
.super Landroid/content/BroadcastReceiver;
.source "ToddlerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ToddlerModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$302(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$300(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$400(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$000(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method
