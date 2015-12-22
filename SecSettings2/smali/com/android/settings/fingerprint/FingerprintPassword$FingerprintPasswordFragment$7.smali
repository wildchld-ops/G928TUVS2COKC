.class Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;
.super Ljava/lang/Object;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxOtherCases:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    # invokes: Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v1, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->access$1600(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$7;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
