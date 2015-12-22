.class final Lcom/android/server/telecom/secutils/TelecomUtils$4;
.super Ljava/lang/Object;
.source "TelecomUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TelecomUtils;->playCallEndTone(Landroid/content/Context;Lcom/android/server/telecom/Call;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "Telecom"

    const-string v1, "TelecomUtils : playMediaTone completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtils;->mPlayingSecCallEndTone:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->access$002(Z)Z

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->resetAudioStateAfterDisconnect()V

    return-void
.end method
