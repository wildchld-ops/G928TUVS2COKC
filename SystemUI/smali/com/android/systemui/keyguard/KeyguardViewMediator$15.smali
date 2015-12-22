.class Lcom/android/systemui/keyguard/KeyguardViewMediator$15;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleLaunchActivityBended(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$dismissIfInsecure:Z

.field final synthetic val$fIntent:Landroid/content/Intent;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZLandroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$afterKeyguardGone:Z

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$dismissIfInsecure:Z

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$pIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBendedPendingIntent() : afterKeyguardGone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$afterKeyguardGone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dismissIfInsecure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$dismissIfInsecure:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$dismissIfInsecure:Z

    if-ne v1, v5, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$pIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->val$fIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "Cannot send pending intent due to : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
