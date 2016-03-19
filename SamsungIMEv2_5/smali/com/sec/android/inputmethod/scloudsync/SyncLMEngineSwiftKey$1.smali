.class Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$1;
.super Ljava/lang/Object;
.source "SyncLMEngineSwiftKey.java"

# interfaces
.implements Lcom/touchtype_fluency/LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;
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

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$1;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$4;->$SwitchMap$com$touchtype_fluency$LoggingListener$Level:[I

    invoke-virtual {p1}, Lcom/touchtype_fluency/LoggingListener$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "SamsungIME_SYNC"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SamsungIME_SYNC"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "SamsungIME_SYNC"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
