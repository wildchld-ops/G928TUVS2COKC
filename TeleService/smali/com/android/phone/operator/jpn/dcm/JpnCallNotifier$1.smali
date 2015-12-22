.class Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$1;
.super Ljava/lang/Object;
.source "JpnCallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$1;->this$0:Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$1;->this$0:Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;

    const-string v1, "onCompletion : excuted "

    # invokes: Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->access$000(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;Ljava/lang/String;)V

    return-void
.end method
