.class final Landroid/app/ContextImpl$57;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v2, "wifihs20"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/hs20/IWifiHs20Manager;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/hs20/WifiHs20Manager;

    invoke-direct {v2, v1}, Landroid/net/wifi/hs20/WifiHs20Manager;-><init>(Landroid/net/wifi/hs20/IWifiHs20Manager;)V

    return-object v2
.end method
