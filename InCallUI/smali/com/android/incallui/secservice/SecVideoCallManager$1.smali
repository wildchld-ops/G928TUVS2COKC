.class Lcom/android/incallui/secservice/SecVideoCallManager$1;
.super Landroid/os/Handler;
.source "SecVideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secservice/SecVideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secservice/SecVideoCallManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$000(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$100(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/incallui/secutils/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$200(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$100(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->deleteFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/secutils/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->updateSelectedVideoFromGallery(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$300(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/incallui/secutils/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->showNearEndVideo()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->dualCamera(Z)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    const v1, 0x7f0d0207

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->displayToast(I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$1;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$400(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->holdPreview(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x191 -> :sswitch_5
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method
