.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const/4 v5, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z
    invoke-static {v4, v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x18

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setMaxLines(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    :goto_0
    return-void

    :catch_0
    move-exception v4

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_0

    :catch_1
    move-exception v4

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_0

    :catch_2
    move-exception v4

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_0

    :catchall_0
    move-exception v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    throw v4
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    return-void
.end method
