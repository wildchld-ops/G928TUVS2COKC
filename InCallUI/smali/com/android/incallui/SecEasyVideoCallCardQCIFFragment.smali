.class public Lcom/android/incallui/SecEasyVideoCallCardQCIFFragment;
.super Lcom/android/incallui/SecVideoCallCardQCIFFragment;
.source "SecEasyVideoCallCardQCIFFragment.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVideoCallCardQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVideoCallCardQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    const v0, 0x7f040106

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100277

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecEasyVideoCallCardQCIFFragment;->mNameContainer:Landroid/view/View;

    return-void
.end method

.method protected updateLayoutForCallState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->updateLayoutForCallState(I)V

    return-void
.end method
