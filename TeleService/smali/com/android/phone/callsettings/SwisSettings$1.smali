.class Lcom/android/phone/callsettings/SwisSettings$1;
.super Landroid/database/ContentObserver;
.source "SwisSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SwisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SwisSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SwisSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SwisSettings$1;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$1;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    # getter for: Lcom/android/phone/callsettings/SwisSettings;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings;->access$000(Lcom/android/phone/callsettings/SwisSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$1;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    # getter for: Lcom/android/phone/callsettings/SwisSettings;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings;->access$000(Lcom/android/phone/callsettings/SwisSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$1;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SwisSettings;->finish()V

    :cond_0
    return-void
.end method
