.class Lcom/android/keyguard/KeyguardPatternView$13;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;

.field final synthetic val$animatedCell:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$appearing:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;ZLcom/android/internal/widget/LockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$13;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardPatternView$13;->val$appearing:Z

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPatternView$13;->val$animatedCell:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView$13;->val$appearing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$13;->val$animatedCell:Lcom/android/internal/widget/LockPatternView$CellState;

    iput v0, v1, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$13;->val$animatedCell:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v2, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$13;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$13;->val$animatedCell:Lcom/android/internal/widget/LockPatternView$CellState;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    goto :goto_0
.end method
