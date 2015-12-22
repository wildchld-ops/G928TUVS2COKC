.class public Lcom/android/phone/mobilenetworks/kor/RoamingNetworkSelectHelp;
.super Landroid/app/Activity;
.source "RoamingNetworkSelectHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/RoamingNetworkSelectHelp;->setContentView(I)V

    return-void
.end method
