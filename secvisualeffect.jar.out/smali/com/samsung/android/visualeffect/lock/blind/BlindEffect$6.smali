.class Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$6;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->setAffordanceRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BlindEffect"

    const-string v1, "affordanceRunnableDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->affordanceX:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->affordanceY:F

    # invokes: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->playDownAnimator(FF)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$1300(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$6;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    const-wide/16 v2, 0x64

    # invokes: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->startAffordanceRunnableUp(J)V
    invoke-static {v0, v2, v3}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$1400(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;J)V

    return-void
.end method
