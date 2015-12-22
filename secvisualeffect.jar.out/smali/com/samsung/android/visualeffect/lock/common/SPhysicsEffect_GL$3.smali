.class Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;
.super Ljava/lang/Object;
.source "SPhysicsEffect_GL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->changeBackground(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

.field final synthetic val$final_mBG:Landroid/graphics/Bitmap;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->val$final_mBG:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->val$final_mBG:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->val$mode:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->changeBackground(Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->setRenderMode(I)V

    :cond_0
    return-void
.end method
