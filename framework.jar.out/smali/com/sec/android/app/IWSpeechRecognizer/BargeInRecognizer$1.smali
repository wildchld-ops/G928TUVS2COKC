.class Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;
.super Landroid/os/Handler;
.source "BargeInRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    # getter for: Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio is halt without stopBargeIn()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    return-void
.end method
