.class public Lcom/android/services/utils/SecUpgradeTonePlayer;
.super Ljava/lang/Object;
.source "SecUpgradeTonePlayer.java"


# static fields
.field public static mPlayStopped:Z


# instance fields
.field private mEventTime:J

.field mHandler:Landroid/os/Handler;

.field private mPlayCount:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayStopped:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mEventTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I

    new-instance v0, Lcom/android/services/utils/SecUpgradeTonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/services/utils/SecUpgradeTonePlayer$1;-><init>(Lcom/android/services/utils/SecUpgradeTonePlayer;)V

    iput-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/utils/SecUpgradeTonePlayer;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/services/utils/SecUpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0

    iput-object p1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/services/utils/SecUpgradeTonePlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mEventTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/services/utils/SecUpgradeTonePlayer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mEventTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/services/utils/SecUpgradeTonePlayer;I)I
    .locals 0

    iput p1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/services/utils/SecUpgradeTonePlayer;)I
    .locals 1

    iget v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/services/utils/SecUpgradeTonePlayer;I)I
    .locals 0

    iput p1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/services/utils/SecUpgradeTonePlayer;)I
    .locals 2

    iget v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayCount:I

    return v0
.end method


# virtual methods
.method public releaseTone()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method public startTone()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopTone()V
    .locals 6

    const/16 v5, 0x68

    const/16 v4, 0x67

    const/16 v3, 0x66

    const/16 v2, 0x65

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mToneState:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
