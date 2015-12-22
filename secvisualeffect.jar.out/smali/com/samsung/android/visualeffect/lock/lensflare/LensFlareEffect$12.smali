.class Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$12;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->show()V
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$12;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LensFlare"

    const-string v1, "mFirstCreatedRunnable,  isBeforeInit is True and called lensFlareinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$12;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->lensFlareinit()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$2100(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V

    return-void
.end method
