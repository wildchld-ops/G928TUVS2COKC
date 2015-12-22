.class Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$11;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$11;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$11;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->playUnlockAffordance()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1800(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$11;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->isPlayAffordance:Z
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1902(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;Z)Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$11;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$2002(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
