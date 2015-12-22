.class Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;
.super Ljava/lang/Object;
.source "SPhysicsEffect_TV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;->showUnlockAffordance(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;FF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->val$x:F

    iput p3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;->TAG:Ljava/lang/String;

    const-string v1, "postDelayed call showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->this$0:Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->val$x:F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV$8;->val$y:F

    # invokes: Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;->showUnlockAffordance(FF)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;->access$000(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_TV;FF)V

    return-void
.end method
