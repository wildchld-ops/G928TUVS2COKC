.class Lcom/android/server/telecom/secutils/CallTextToSpeech$2;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method
