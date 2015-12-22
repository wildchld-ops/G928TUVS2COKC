.class Lcom/android/settings/fingerprint/FingerprintPassword$2;
.super Ljava/lang/Object;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintPassword;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$2;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxOtherCases:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "KnoxKeyguard"

    const-string v3, "KNOX FingerPrintPassword reset is cancelled by back key"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.knox.kss"

    const-string v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "resetResult"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$2;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$2;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$2;->this$0:Lcom/android/settings/fingerprint/FingerprintPassword;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintPassword;->finish()V

    return-void
.end method
