.class Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;
.super Ljava/lang/Object;
.source "LockBGEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

.field final synthetic val$action:I

.field final synthetic val$normalizedX:I

.field final synthetic val$normalizedY:I


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;III)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->val$action:I

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->val$normalizedX:I

    iput p4, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->val$normalizedY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->val$action:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->val$normalizedX:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$6;->val$normalizedY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->handleTouchEvent(III)V

    return-void
.end method
