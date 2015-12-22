.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;,
        Lcom/android/systemui/volume/VolumeUI$VolumeController;
    }
.end annotation


# static fields
.field private static final DEFAULT:I = 0x1

.field private static final SETTING:Ljava/lang/String; = "systemui_volume_controller"

.field private static final SETTING_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "VolumeUI"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissDelay:I

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPanel:Lcom/android/systemui/volume/SecVolumePanel;

.field private mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

.field private final mStartZenSettings:Ljava/lang/Runnable;

.field private mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "systemui_volume_controller"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/volume/VolumeUI$2;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$2;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/volume/VolumeUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeUI$3;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeUI;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$VolumeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    return-object v0
.end method

.method private initPanel()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    new-instance v0, Lcom/android/systemui/volume/SecVolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumeUI$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->setCallback(Lcom/android/systemui/volume/SecVolumePanel$Callback;)V

    return-void
.end method

.method private updateController()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_volume_controller"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumeUI"

    const-string v1, "Registering volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VolumeUI"

    const-string v1, "Unregistering volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "mEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/SecVolumePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->initPanel()V

    new-instance v0, Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    new-instance v0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
