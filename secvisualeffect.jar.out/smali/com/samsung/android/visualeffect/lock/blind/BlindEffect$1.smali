.class Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pushAnimationMin:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$100(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pushAnimationMin:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$100(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    # setter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->animationValue:F
    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$002(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->lightView:Lcom/samsung/android/visualeffect/common/ImageViewBlended;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$200(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)Lcom/samsung/android/visualeffect/common/ImageViewBlended;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->animationValue:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$000(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/ImageViewBlended;->setAlpha(F)V

    return-void
.end method
