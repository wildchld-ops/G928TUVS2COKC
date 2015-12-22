.class Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$1;
.super Ljava/lang/Object;
.source "LockBGEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->clearEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;->clearEffect()V

    return-void
.end method
