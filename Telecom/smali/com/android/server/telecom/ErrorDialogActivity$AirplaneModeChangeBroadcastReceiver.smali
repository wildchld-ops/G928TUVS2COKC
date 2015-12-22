.class final Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;Lcom/android/server/telecom/ErrorDialogActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive, action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    # getter for: Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;
    invoke-static {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->access$500(Lcom/android/server/telecom/ErrorDialogActivity;)Lcom/android/server/telecom/secutils/ErrorDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    # getter for: Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;
    invoke-static {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->access$500(Lcom/android/server/telecom/ErrorDialogActivity;)Lcom/android/server/telecom/secutils/ErrorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->dismissAirplaneModeErrorDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    # getter for: Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;
    invoke-static {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->access$500(Lcom/android/server/telecom/ErrorDialogActivity;)Lcom/android/server/telecom/secutils/ErrorDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    # getter for: Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;
    invoke-static {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->access$500(Lcom/android/server/telecom/ErrorDialogActivity;)Lcom/android/server/telecom/secutils/ErrorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->dismissAirplaneModeErrorDialog()V

    goto :goto_0
.end method
