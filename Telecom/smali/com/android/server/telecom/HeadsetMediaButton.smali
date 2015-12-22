.class public final Lcom/android/server/telecom/HeadsetMediaButton;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "HeadsetMediaButton.java"


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private isLongPress:Z

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mSession:Landroid/media/session/MediaSession;

.field private final mSessionCallback:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/HeadsetMediaButton;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    new-instance v0, Lcom/android/server/telecom/HeadsetMediaButton$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/HeadsetMediaButton$1;-><init>(Lcom/android/server/telecom/HeadsetMediaButton;)V

    iput-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSessionCallback:Landroid/media/session/MediaSession$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->isLongPress:Z

    iput-object p2, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-instance v0, Landroid/media/session/MediaSession;

    const-class v1, Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSessionCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    const v1, 0x10001

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    sget-object v1, Lcom/android/server/telecom/HeadsetMediaButton;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/HeadsetMediaButton;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/HeadsetMediaButton;->handleHeadsetHook(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private handleHeadsetHook(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "handleHeadsetHook()...%s %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LongPressed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/server/telecom/HeadsetMediaButton;->isLongPress:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/telecom/HeadsetMediaButton;->isLongPress:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->isLongPress:Z

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->onSecMediaButton(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->isLongPress:Z

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->onSecMediaButton(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/HeadsetMediaButton;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_0
    return-void
.end method
