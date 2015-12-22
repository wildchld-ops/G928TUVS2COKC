.class public Lcom/android/phone/mobilenetworks/kor/RoamingNetworkListHelp;
.super Landroid/app/Activity;
.source "RoamingNetworkListHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/RoamingNetworkListHelp;->setContentView(I)V

    return-void
.end method
