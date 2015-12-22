.class Lcom/android/settings/SecurityFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecurityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecurityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SecurityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecurityFragment$1;->this$0:Lcom/android/settings/SecurityFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SecurityFragment"

    const-string v1, "BroadcastReceiver : KAP_INTENT_FROM_TIMA"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "security.tima.safe_mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "false"

    const-string v1, "security.tima.safe_mode"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecurityFragment$1;->this$0:Lcom/android/settings/SecurityFragment;

    # getter for: Lcom/android/settings/SecurityFragment;->mTvSystemProtectionStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/SecurityFragment;->access$000(Lcom/android/settings/SecurityFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a1594

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/SecurityFragment$1;->this$0:Lcom/android/settings/SecurityFragment;

    # getter for: Lcom/android/settings/SecurityFragment;->mBtnSystemProtectionRestart:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/SecurityFragment;->access$100(Lcom/android/settings/SecurityFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
