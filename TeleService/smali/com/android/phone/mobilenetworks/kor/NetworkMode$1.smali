.class Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;
.super Landroid/os/Handler;
.source "NetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkMode;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkMode;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkMode;->selectedBandInformed(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->access$000(Lcom/android/phone/mobilenetworks/kor/NetworkMode;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkMode;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->access$100(Lcom/android/phone/mobilenetworks/kor/NetworkMode;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
