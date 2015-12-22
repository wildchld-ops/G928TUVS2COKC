.class Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pushAnimationMax:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$300(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->animationValue:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$002(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->lightView:Lcom/samsung/android/visualeffect/common/ImageViewBlended;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$200(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)Lcom/samsung/android/visualeffect/common/ImageViewBlended;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->animationValue:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$000(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/common/ImageViewBlended;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pointX:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$400(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->animationValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$000(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v3

    sub-float v3, v4, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    # setter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pointX:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$402(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->point2X:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$500(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->animationValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$000(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v3

    sub-float v3, v4, v3

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    # setter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->point2X:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$502(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    return-void
.end method
