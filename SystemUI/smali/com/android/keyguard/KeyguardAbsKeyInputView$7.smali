.class Lcom/android/keyguard/KeyguardAbsKeyInputView$7;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$hint:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->val$hint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->val$hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->val$hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->sendAccessibilityEvent(Ljava/lang/CharSequence;)V

    return-void
.end method
