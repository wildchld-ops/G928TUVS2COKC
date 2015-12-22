.class Lcom/android/keyguard/KeyguardUniversalLockView$9;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3100(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
