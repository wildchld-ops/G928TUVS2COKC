.class Lcom/android/phone/operator/usa/TelephonyExtensionManager$3;
.super Landroid/database/ContentObserver;
.source "TelephonyExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/TelephonyExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$3;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingDataRoaming()V

    return-void
.end method
