.class Lcom/android/phone/photoring/PhotoRingScreen$1;
.super Landroid/os/Handler;
.source "PhotoRingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$1;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/photoring/photoring_temp.mp4"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$1;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->Pick_Video_From_Trim()V
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$000(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
