.class public Lcom/sec/android/app/launcher/activities/FragmentBase;
.super Landroid/app/Fragment;
.source "FragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDnDEffect(I)V
    .locals 0

    return-void
.end method

.method public applyScrollEffect(I)V
    .locals 0

    return-void
.end method

.method public getSavedDnDEffectState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSavedScrollEffect()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onHomePressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 0

    return-void
.end method

.method public saveDnDEffect(I)V
    .locals 0

    return-void
.end method

.method public saveScrollEffect(I)V
    .locals 0

    return-void
.end method

.method public surfaceChanged()V
    .locals 0

    return-void
.end method
