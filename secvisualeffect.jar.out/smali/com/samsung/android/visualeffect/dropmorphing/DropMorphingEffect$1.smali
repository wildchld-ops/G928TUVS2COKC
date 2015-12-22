.class Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;
.super Ljava/lang/Object;
.source "DropMorphingEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    # getter for: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I
    invoke-static {v0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$000(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    const/4 v1, 0x3

    # -= operator for: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$020(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;I)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    # getter for: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I
    invoke-static {v0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$000(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    # setter for: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I
    invoke-static {v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$002(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    # getter for: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->invalidateRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$200(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    # setter for: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I
    invoke-static {v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$002(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;I)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;->this$0:Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;

    # invokes: Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->cancelAnimatior()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->access$100(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)V

    goto :goto_0
.end method
