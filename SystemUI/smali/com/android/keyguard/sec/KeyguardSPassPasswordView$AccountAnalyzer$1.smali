.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method
