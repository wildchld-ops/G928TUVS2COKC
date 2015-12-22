.class Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;
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

.field final synthetic val$hashParam:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;->val$hashParam:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->TAG:Ljava/lang/String;

    const-string v1, "run!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;->val$hashParam:Ljava/util/HashMap;

    const-string v2, "StartDelay"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$3;->val$hashParam:Ljava/util/HashMap;

    const-string v4, "Rect"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->showAffordanceEffect(JLandroid/graphics/Rect;)V

    return-void
.end method
