.class Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;
.super Ljava/lang/Object;
.source "LockBGEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->showAffordanceEffect(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

.field final synthetic val$affordanceX:I

.field final synthetic val$affordanceY:I


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;->val$affordanceX:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;->val$affordanceY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;->val$affordanceX:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$2;->val$affordanceY:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->showUnlockAffordance(II)V

    return-void
.end method
