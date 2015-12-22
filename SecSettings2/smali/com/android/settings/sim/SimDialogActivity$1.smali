.class Lcom/android/settings/sim/SimDialogActivity$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$sir:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$sir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    # invokes: Lcom/android/settings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    invoke-static {v2, v1}, Lcom/android/settings/sim/SimDialogActivity;->access$000(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v2, v1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v2, v1}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    # invokes: Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v2, v0}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    return-void
.end method
