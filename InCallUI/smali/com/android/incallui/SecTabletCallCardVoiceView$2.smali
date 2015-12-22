.class Lcom/android/incallui/SecTabletCallCardVoiceView$2;
.super Ljava/lang/Object;
.source "SecTabletCallCardVoiceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardVoiceView;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$2;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$2;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    # setter for: Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoMute:Z
    invoke-static {v0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->access$002(Lcom/android/incallui/SecTabletCallCardVoiceView;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$2;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/SecTabletCallCardVoiceView;->mSilentRing:Z
    invoke-static {v0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->access$102(Lcom/android/incallui/SecTabletCallCardVoiceView;Z)Z

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const-string v0, "SecAnswerImageFragment"

    const-string v1, "photoring - start video"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$2;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    # getter for: Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->access$200(Lcom/android/incallui/SecTabletCallCardVoiceView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$2;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    # setter for: Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->access$302(Lcom/android/incallui/SecTabletCallCardVoiceView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
