.class Lcom/android/phone/operator/sec/SecCallNotifier$2;
.super Ljava/lang/Object;
.source "SecCallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/sec/SecCallNotifier;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/sec/SecCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/sec/SecCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/sec/SecCallNotifier$2;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier$2;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    const-string v1, "onError: playMediaTone error"

    # invokes: Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$100(Lcom/android/phone/operator/sec/SecCallNotifier;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return v2
.end method
