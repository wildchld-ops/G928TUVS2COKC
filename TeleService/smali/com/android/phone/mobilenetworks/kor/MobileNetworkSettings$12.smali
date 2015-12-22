.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->setMobileNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

.field final synthetic val$cm:Landroid/net/ConnectivityManager;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/net/ConnectivityManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;->val$cm:Landroid/net/ConnectivityManager;

    iput-boolean p3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;->val$cm:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method
