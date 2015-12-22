.class Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$2;
.super Landroid/os/Handler;
.source "DataNetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$2;->this$0:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;

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

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$2;->this$0:Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;->access$000(Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
