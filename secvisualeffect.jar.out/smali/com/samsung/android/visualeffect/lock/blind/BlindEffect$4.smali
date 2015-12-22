.class Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const v4, 0x3e2e147b    # 0.17f

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->currentX:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$700(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pointX:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$400(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    # += operator for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pointX:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$416(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->currentY:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$900(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pointY:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$800(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    # += operator for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->pointY:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$816(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->currentX:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$700(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->point2X:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$500(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    # += operator for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->point2X:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$516(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;F)F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->totalColumn:I
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$1000(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->setScale(I)V
    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$1100(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
