.class public Lcom/android/systemui/crop/HomeCropActivity;
.super Landroid/app/Activity;
.source "HomeCropActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/crop/HomeCropActivity;->finish()V

    return-void
.end method
