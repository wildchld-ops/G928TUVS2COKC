.class Lcom/android/keyguard/KeyguardPatternView$3;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;


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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateParentView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
