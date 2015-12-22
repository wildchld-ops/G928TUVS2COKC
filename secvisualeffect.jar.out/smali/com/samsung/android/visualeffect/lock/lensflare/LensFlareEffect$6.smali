.class Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$6;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->animatedHover()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1000(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V

    return-void
.end method
