.class Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->unlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$100(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$200(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unlock : onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->unlockFinished()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$000(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
