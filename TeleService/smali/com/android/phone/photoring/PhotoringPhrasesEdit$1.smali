.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;
.super Landroid/os/Handler;
.source "PhotoringPhrasesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/photoring/photoring_temp.mp4"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # invokes: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->Pick_Video_From_Trim(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$000(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Landroid/net/Uri;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
