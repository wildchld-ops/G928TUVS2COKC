.class Lcom/android/server/telecom/CarrierMatchDialogActivity$2;
.super Ljava/lang/Object;
.source "CarrierMatchDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/CarrierMatchDialogActivity;->showCarrierMatchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

.field final synthetic val$isSmartCSPEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    iput-boolean p2, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->val$isSmartCSPEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->val$isSmartCSPEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/CarrierMatchUtils;->changeCSP(Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    # getter for: Lcom/android/server/telecom/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->access$000(Lcom/android/server/telecom/CarrierMatchDialogActivity;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    # getter for: Lcom/android/server/telecom/CarrierMatchDialogActivity;->mOldSim:I
    invoke-static {v2}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->access$100(Lcom/android/server/telecom/CarrierMatchDialogActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/CarrierMatchUtils;->sendCarrierMatchBroadcastToReceiver(Landroid/content/Context;Landroid/content/Intent;I)Z

    return-void
.end method
