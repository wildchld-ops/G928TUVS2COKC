.class Lcom/android/incallui/secservice/SecVideoCallManager$4;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$4;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager$4;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intent.getAction() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$000(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)V

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager$4;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    const-string v6, "Return value from GALLERY (extras) is null"

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$000(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.ACTION_PICK_IMAGE_BITMAP_FROM_GALLERY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "resultExtra"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0x64

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager$4;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v5, v5, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.action.ACTION_PICK_IMAGE_FILE_FROM_GALLERY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "resultFilePath"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0x65

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager$4;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v5, v5, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.ACTION_PICK_VIDEO_FROM_GALLERY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0xc8

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/incallui/secservice/SecVideoCallManager$4;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v5, v5, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
