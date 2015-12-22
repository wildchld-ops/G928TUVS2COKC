.class Lcom/android/systemui/volume/SecVolumePanel$13;
.super Landroid/media/session/MediaController$Callback;
.source "SecVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$13;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$13;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumePanel;->onRemoteVolumeUpdateIfShown()V

    return-void
.end method
