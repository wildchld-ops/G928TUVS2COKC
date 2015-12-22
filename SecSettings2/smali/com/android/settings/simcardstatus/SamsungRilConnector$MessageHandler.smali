.class Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;
.super Landroid/os/Handler;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simcardstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;


# direct methods
.method public constructor <init>(Lcom/android/settings/simcardstatus/SamsungRilConnector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed. error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "response"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    check-cast v2, [B

    # setter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mBytesBuffer:[B
    invoke-static {v3, v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$202(Lcom/android/settings/simcardstatus/SamsungRilConnector;[B)[B

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mBytesBuffer:[B
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$200(Lcom/android/settings/simcardstatus/SamsungRilConnector;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mBytesBuffer:[B
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$200(Lcom/android/settings/simcardstatus/SamsungRilConnector;)[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "byte buffer is empty. failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$300(Lcom/android/settings/simcardstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/simcardstatus/SamsungRilConnector$IOnRilJobListener;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "BLOB_GET_DONE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mBytesBuffer:[B
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$200(Lcom/android/settings/simcardstatus/SamsungRilConnector;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mBytesBuffer:[B
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$200(Lcom/android/settings/simcardstatus/SamsungRilConnector;)[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    iget-object v3, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mBytesBuffer:[B
    invoke-static {v3}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$200(Lcom/android/settings/simcardstatus/SamsungRilConnector;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->parseOperationName([B)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$402(Lcom/android/settings/simcardstatus/SamsungRilConnector;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$400(Lcom/android/settings/simcardstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    # getter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$400(Lcom/android/settings/simcardstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector$IOnRilJobListener;->onGetBlobFinished(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "Blob policy file data not received : Failed!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "BLOB_SET_DONE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v1, v2}, Lcom/android/settings/simcardstatus/SamsungRilConnector$IOnRilJobListener;->onSetBlobFinished(Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
