.class public Lcom/sec/android/app/launcher/views/DemoPageView;
.super Lcom/sec/android/app/launcher/views/HomePageView;
.source "DemoPageView.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomePageView;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/DemoPageView;->setIsNoBackgroundPage(Z)V

    return-void
.end method


# virtual methods
.method public isDemoPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMeshDemoPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
