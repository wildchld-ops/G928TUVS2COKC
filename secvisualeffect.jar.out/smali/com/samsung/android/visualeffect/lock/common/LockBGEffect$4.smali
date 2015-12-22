.class Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;->val$cmdVal:I

    iput-object p3, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;->val$hashParam:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;->this$0:Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;->val$cmdVal:I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect$4;->val$hashParam:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method
