.class Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;
.super Ljava/lang/Object;
.source "LockBGEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->handleCustomEvent(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

.field final synthetic val$cmdVal:I

.field final synthetic val$hashParam:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;ILjava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$cmdVal:I

    iput-object p3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$hashParam:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v1, "run!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$cmdVal:I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$hashParam:Ljava/util/HashMap;

    const-string v2, "Bitmap"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->setBGBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$cmdVal:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "unlock"

    const-string v1, "lockBGEffect unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->showUnlockEffect()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$cmdVal:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$hashParam:Ljava/util/HashMap;

    const-string v1, "Nums"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$5;->val$hashParam:Ljava/util/HashMap;

    const-string v3, "Values"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->setParameters([I[F)V

    goto :goto_0
.end method
