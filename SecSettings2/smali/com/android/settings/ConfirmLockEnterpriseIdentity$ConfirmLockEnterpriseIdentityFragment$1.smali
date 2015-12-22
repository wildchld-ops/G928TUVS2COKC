.class Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;
.super Landroid/os/AsyncTask;
.source "ConfirmLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$400(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->val$password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ConfirmLockEnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPassword : status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const-string v2, "ConfirmLockEnterpriseIdentity"

    const-string v3, "EnterpriseIdentityVerification : invoked: validateUserAuthentication"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "ConfirmLockEnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIdentityVerification: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10

    const/16 v9, 0x64

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setKeepScreenOn(Z)V

    const-string v6, "ConfirmLockEnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Verify completed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mOrientation:I
    invoke-static {v7}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$200(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void

    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    if-eqz v6, :cond_0

    if-lt v5, v9, :cond_0

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    :cond_0
    sget-object v6, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v6}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "enterprise_password"

    iget-object v7, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->val$password:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "ConfirmLockEnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VerifyCAC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/KnoxConfirmLockHelper;->checkNumberOfAttempts()I

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    const v7, 0x7f0a0760

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->showError(I)V
    invoke-static {v6, v7}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$600(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # ++operator for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$704(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$400(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->handleAttemptLockout(J)V
    invoke-static {v6, v0, v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$800(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;J)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    const v7, 0x7f0a0760

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->showError(I)V
    invoke-static {v6, v7}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$600(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)V

    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    # setter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$202(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)I

    const-string v0, "ConfirmLockEnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mOrientation:I
    invoke-static {v2}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$200(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getDeviceOrientation()I
    invoke-static {v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$300(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
