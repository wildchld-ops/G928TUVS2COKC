.class public Lcom/android/incallui/SecTabletConferenceManagerView;
.super Lcom/android/incallui/SecTabletView;
.source "SecTabletConferenceManagerView.java"

# interfaces
.implements Lcom/android/incallui/SecConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletView",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/SecConferenceManagerUi;"
    }
.end annotation


# instance fields
.field protected mActionBarElevation:I

.field protected mConferenceCallList:[Landroid/view/ViewGroup;

.field protected mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/ConferenceManagerPresenter;->getInstance()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    return-void
.end method

.method getUi()Lcom/android/incallui/SecConferenceManagerUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->getUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public isFragmentVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public setPrimaryCallElapsedTime(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRowVisible(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupEndButtonForRow(IZ)V
    .locals 0

    return-void
.end method

.method public setupSeparateButtonForRow(IZ)V
    .locals 0

    return-void
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public updateConferencePanelBackground(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateIMSConferenceList()V
    .locals 0

    return-void
.end method
