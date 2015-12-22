.class Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$2;
.super Ljava/lang/Object;
.source "JpnCallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$2;->this$0:Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier$2;->this$0:Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;

    const-string v1, "onError: playMediaTone error"

    # invokes: Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;->access$100(Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    :cond_1
    return v2
.end method
