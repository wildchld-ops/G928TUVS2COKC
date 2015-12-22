.class Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$7;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$7;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "affordanceRunnableUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect$7;->this$0:Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->playUpAnimator()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;->access$1500(Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;)V

    return-void
.end method
