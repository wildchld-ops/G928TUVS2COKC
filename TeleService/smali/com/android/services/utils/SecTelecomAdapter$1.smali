.class Lcom/android/services/utils/SecTelecomAdapter$1;
.super Landroid/os/Handler;
.source "SecTelecomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/utils/SecTelecomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/utils/SecTelecomAdapter;


# direct methods
.method constructor <init>(Lcom/android/services/utils/SecTelecomAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/utils/SecTelecomAdapter$1;->this$0:Lcom/android/services/utils/SecTelecomAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v5, "SecTelecomAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Ljava/lang/String;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Ljava/lang/String;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/services/utils/SecModifyCallHandler;->requestModifyCall(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v5

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Ljava/lang/String;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Ljava/lang/String;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/android/services/utils/SecModifyCallHandler;->respondModifyCall(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
