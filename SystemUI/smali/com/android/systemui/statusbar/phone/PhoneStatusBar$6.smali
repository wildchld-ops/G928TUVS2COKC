.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;
.super Landroid/media/session/MediaController$Callback;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PhoneStatusBar"

    const-string v1, "DEBUG_MEDIA: Listener did not register, drop the event"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    return-void
.end method
