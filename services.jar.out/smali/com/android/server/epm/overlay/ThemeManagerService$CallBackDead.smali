.class final Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallBackDead"
.end annotation


# instance fields
.field callBack:Landroid/app/epm/IPluginManagerCallback;

.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/epm/IPluginManagerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;->callBack:Landroid/app/epm/IPluginManagerCallback;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3100(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;->callBack:Landroid/app/epm/IPluginManagerCallback;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
