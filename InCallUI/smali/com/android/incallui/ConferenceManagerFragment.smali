.class public Lcom/android/incallui/ConferenceManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;"
    }
.end annotation


# instance fields
.field private mActionBarElevation:I

.field private mConferenceParticipantList:Landroid/widget/ListView;

.field private mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

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

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mActionBarElevation:I

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const v2, 0x7f0d017a

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    iget v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mActionBarElevation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHideOffset(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHideOffset(I)V

    goto :goto_0
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
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

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter;

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/incallui/ConferenceParticipantListAdapter;-><init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipants(Ljava/util/List;Z)V

    return-void
.end method
