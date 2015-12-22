.class Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->showAffordanceEffect(JLandroid/graphics/Rect;)V
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$700(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$300(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceX:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$400(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceY:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$500(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceColor:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$600(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->addDots(IFFI)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->access$802(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
