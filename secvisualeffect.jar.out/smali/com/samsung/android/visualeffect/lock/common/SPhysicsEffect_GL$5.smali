.class Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;
.super Ljava/lang/Object;
.source "SPhysicsEffect_GL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->screenTurnedOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->screenTurnedOff()V

    return-void
.end method
