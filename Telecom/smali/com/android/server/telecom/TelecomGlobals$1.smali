.class Lcom/android/server/telecom/TelecomGlobals$1;
.super Landroid/content/BroadcastReceiver;
.source "TelecomGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomGlobals;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomGlobals$1;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals$1;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    # getter for: Lcom/android/server/telecom/TelecomGlobals;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomGlobals;->access$000(Lcom/android/server/telecom/TelecomGlobals;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->setCurrentUserHandle(Landroid/os/UserHandle;)V

    const-string v0, "start_incallui_bind_bootup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unbind InCallController"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals$1;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    # getter for: Lcom/android/server/telecom/TelecomGlobals;->mInCallController:Lcom/android/server/telecom/InCallController;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomGlobals;->access$100(Lcom/android/server/telecom/TelecomGlobals;)Lcom/android/server/telecom/InCallController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals$1;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    # getter for: Lcom/android/server/telecom/TelecomGlobals;->mInCallController:Lcom/android/server/telecom/InCallController;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomGlobals;->access$100(Lcom/android/server/telecom/TelecomGlobals;)Lcom/android/server/telecom/InCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallController;->unbindAfterCallRemoved()V

    :cond_0
    return-void
.end method
