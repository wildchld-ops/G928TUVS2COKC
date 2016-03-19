.class Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;
.super Landroid/os/Handler;
.source "RecognizerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dragon/android/voiceime/RecognizerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecognizerHandler"
.end annotation


# static fields
.field public static final MSG_RECOGNIZER_START:I = 0x0

.field public static final MSG_RECOGNIZER_START_RECORDING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/dragon/android/voiceime/RecognizerWrapper;


# direct methods
.method constructor <init>(Lcom/dragon/android/voiceime/RecognizerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->this$0:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->this$0:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->startRecognizer()V

    const-string v0, "RecognizerWrapper"

    const-string v1, "mRecognizer is init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->this$0:Lcom/dragon/android/voiceime/RecognizerWrapper;

    # getter for: Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->access$000(Lcom/dragon/android/voiceime/RecognizerWrapper;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->this$0:Lcom/dragon/android/voiceime/RecognizerWrapper;

    # getter for: Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->access$000(Lcom/dragon/android/voiceime/RecognizerWrapper;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->start()V

    const-string v0, "RecognizerWrapper"

    const-string v1, "mRecognizer is started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
