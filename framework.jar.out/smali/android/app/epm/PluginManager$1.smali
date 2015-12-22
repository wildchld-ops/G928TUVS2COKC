.class Landroid/app/epm/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/epm/PluginManager;


# direct methods
.method constructor <init>(Landroid/app/epm/PluginManager;)V
    .locals 0

    iput-object p1, p0, Landroid/app/epm/PluginManager$1;->this$0:Landroid/app/epm/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    # setter for: Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;
    invoke-static {v0}, Landroid/app/epm/PluginManager;->access$002(Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    # setter for: Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;
    invoke-static {v0}, Landroid/app/epm/PluginManager;->access$002(Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;

    return-void
.end method
