.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    :cond_0
    return-void
.end method
