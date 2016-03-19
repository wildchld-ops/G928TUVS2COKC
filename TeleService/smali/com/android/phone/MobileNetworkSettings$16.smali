.class Lcom/android/phone/MobileNetworkSettings$16;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$16;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$16;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mUsbMode:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$1300(Lcom/android/phone/MobileNetworkSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$16;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$16;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mUsbMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1300(Lcom/android/phone/MobileNetworkSettings;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/MobileNetworkSettings;->restoreUsbMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->access$1400(Lcom/android/phone/MobileNetworkSettings;Ljava/lang/String;)V

    const-string v0, "cdfs.state"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
