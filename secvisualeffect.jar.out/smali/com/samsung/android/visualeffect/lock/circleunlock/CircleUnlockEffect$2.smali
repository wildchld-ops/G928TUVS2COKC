.class Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$2;
.super Ljava/lang/Object;
.source "CircleUnlockEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->checkIsWhiteBg()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->checkPosition()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1100(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    return-void
.end method
