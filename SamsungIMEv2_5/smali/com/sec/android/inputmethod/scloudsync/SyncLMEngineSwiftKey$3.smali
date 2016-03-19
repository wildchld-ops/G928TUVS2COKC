.class Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;
.super Ljava/lang/Object;
.source "SyncLMEngineSwiftKey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->applyAddWordList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    # getter for: Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mDLMLocker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->access$100(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    iget-object v1, v1, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$3;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    iget-object v1, v1, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mTempDynamicLMTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v1}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DynamicModel writing fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
