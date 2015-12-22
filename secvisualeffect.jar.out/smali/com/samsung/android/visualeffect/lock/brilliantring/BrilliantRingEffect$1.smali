.class Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;
.super Ljava/lang/Object;
.source "BrilliantRingEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->showAffordanceEffect(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;

.field final synthetic val$normalizedX:I

.field final synthetic val$normalizedY:I


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->val$normalizedX:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->val$normalizedY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->access$000(Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAffordanceEffect Renderer.handleTouchEvent(0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->val$normalizedX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->val$normalizedY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->access$100(Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;)Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->val$normalizedX:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;->val$normalizedY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->handleTouchEvent(III)V

    return-void
.end method
