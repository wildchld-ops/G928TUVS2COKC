.class Lcom/android/server/wallpaper/WallpaperManagerService$2;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$mPersona:Landroid/os/PersonaManager;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/PersonaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$mPersona:Landroid/os/PersonaManager;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 4

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKnoxContainerLaunch personaId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$mPersona:Landroid/os/PersonaManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->needToSkipResetOnReboot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaper(I)V
    invoke-static {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    :cond_0
    return-void
.end method

.method public onPersonaActive(I)V
    .locals 4

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPersonaActive personaId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v0

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaper(I)V
    invoke-static {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    :cond_0
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 0

    return-void
.end method

.method public onResetPersona(I)V
    .locals 0

    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 0

    return-void
.end method
