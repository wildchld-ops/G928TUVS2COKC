.class Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView$8;->showShortcutHelpText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$8;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method
