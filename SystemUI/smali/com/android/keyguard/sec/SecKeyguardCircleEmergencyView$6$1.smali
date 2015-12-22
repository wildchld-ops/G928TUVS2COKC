.class Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;
.super Ljava/lang/Object;
.source "SecKeyguardCircleEmergencyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    const-string v3, "CALL"

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    iget-boolean v4, v4, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->val$isSecure:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->insertLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot launch activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
