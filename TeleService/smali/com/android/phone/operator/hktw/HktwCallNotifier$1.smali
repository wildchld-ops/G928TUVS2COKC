.class Lcom/android/phone/operator/hktw/HktwCallNotifier$1;
.super Ljava/lang/Object;
.source "HktwCallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/hktw/HktwCallNotifier;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/hktw/HktwCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/hktw/HktwCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/hktw/HktwCallNotifier$1;->this$0:Lcom/android/phone/operator/hktw/HktwCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/phone/operator/hktw/HktwCallNotifier$1;->this$0:Lcom/android/phone/operator/hktw/HktwCallNotifier;

    const-string v1, "onCompletion : excuted "

    # invokes: Lcom/android/phone/operator/hktw/HktwCallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/hktw/HktwCallNotifier;->access$000(Lcom/android/phone/operator/hktw/HktwCallNotifier;Ljava/lang/String;)V

    return-void
.end method
