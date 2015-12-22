.class public Lcom/android/incallui/SecDrivelinkIncomImageAnimator;
.super Ljava/lang/Object;
.source "SecDrivelinkIncomImageAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private hasToContinue:Z

.field private mHandler:Landroid/os/Handler;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->state:I

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->hasToContinue:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "starting SecDrivelinkIncomImageAnimator"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->state:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->state:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v1, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->state:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->state:I

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->hasToContinue:Z

    if-nez v1, :cond_0

    const-string v1, "stopping SecDrivelinkIncomImageAnimator"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->hasToContinue:Z

    return-void
.end method
