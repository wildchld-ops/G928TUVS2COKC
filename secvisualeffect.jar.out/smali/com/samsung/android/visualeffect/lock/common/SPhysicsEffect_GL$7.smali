.class Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;
.super Ljava/lang/Object;
.source "SPhysicsEffect_GL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->showUnlockAffordance(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;FF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->val$x:F

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->val$x:F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;->val$y:F

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->affordanceEffect(FF)V

    return-void
.end method
