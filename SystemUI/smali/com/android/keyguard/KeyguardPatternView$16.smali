.class Lcom/android/keyguard/KeyguardPatternView$16;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$16;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$16;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$16;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
