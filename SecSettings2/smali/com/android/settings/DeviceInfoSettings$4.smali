.class Lcom/android/settings/DeviceInfoSettings$4;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/aidl/ISecurityManager;

    move-result-object v1

    # setter for: Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->access$502(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    # setter for: Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->access$502(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0
.end method
