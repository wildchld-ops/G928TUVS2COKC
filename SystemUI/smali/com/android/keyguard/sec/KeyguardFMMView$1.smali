.class Lcom/android/keyguard/sec/KeyguardFMMView$1;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardFMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$000(Lcom/android/keyguard/sec/KeyguardFMMView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardFMMView"

    const-string v3, "click resumeCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$100(Lcom/android/keyguard/sec/KeyguardFMMView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$200(Lcom/android/keyguard/sec/KeyguardFMMView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v2, "KeyguardFMMView"

    const-string v3, "click mFMMCallButton"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$300(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "KeyguardFMMView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
