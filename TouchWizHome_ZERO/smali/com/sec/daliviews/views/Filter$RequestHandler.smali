.class Lcom/sec/daliviews/views/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/Filter;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/Filter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/daliviews/views/Filter$RequestArguments;

    :try_start_0
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    iget-object v6, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/Filter;->performFiltering(Ljava/lang/CharSequence;)Lcom/sec/daliviews/views/Filter$FilterResults;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->results:Lcom/sec/daliviews/views/Filter$FilterResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$200(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$300(Lcom/sec/daliviews/views/Filter;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$400(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$400(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$400(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v5, Lcom/sec/daliviews/views/Filter$FilterResults;

    invoke-direct {v5}, Lcom/sec/daliviews/views/Filter$FilterResults;-><init>()V

    iput-object v5, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->results:Lcom/sec/daliviews/views/Filter$FilterResults;

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$200(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mResultHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/daliviews/views/Filter;->access$200(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    throw v5

    :pswitch_1
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$300(Lcom/sec/daliviews/views/Filter;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$400(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    # getter for: Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/daliviews/views/Filter;->access$400(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    iget-object v5, p0, Lcom/sec/daliviews/views/Filter$RequestHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    const/4 v7, 0x0

    # setter for: Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5, v7}, Lcom/sec/daliviews/views/Filter;->access$402(Lcom/sec/daliviews/views/Filter;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
