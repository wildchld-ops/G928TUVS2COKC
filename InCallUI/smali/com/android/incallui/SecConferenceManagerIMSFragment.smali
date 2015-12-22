.class public Lcom/android/incallui/SecConferenceManagerIMSFragment;
.super Lcom/android/incallui/SecConferenceManagerFragment;
.source "SecConferenceManagerIMSFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerFragment;-><init>()V

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

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public final displayCallerInfoForIMSConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 11

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v3, 0x7f10004c

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v3, 0x7f100045

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v3, 0x7f100046

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v3, 0x7f100047

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v3, 0x7f100048

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz p5, :cond_0

    const/4 v6, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x7

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    const v1, 0x7f020312

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x1

    invoke-direct {v6, p2, p4, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const v1, 0x7f020313

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method getUi()Lcom/android/incallui/SecConferenceManagerUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->getUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecConferenceManagerFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f04000e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "onCreateView"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceMaxCallCount()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v3, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceMaxCallCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConferenceCallList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecConferenceManagerIMSFragment;->mActionBarElevation:I

    return-object v1

    :array_0
    .array-data 4
        0x7f100050
        0x7f100051
        0x7f100052
        0x7f100053
        0x7f100054
        0x7f100055
    .end array-data
.end method

.method public updateIMSConferenceList()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v0, "updateIMSConferenceList()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCallCount(Lcom/android/incallui/Call;)I

    move-result v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceMaxCallCount()I

    move-result v8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    if-ge v1, v7, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getNameForIMSConference(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getNumberForIMSConference(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getLookupKeyForIMSConference(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getPhotoUriForIMSConference(I)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getStateForIMSConference(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->displayCallerInfoForIMSConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->setRowVisible(IZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, v10

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->displayCallerInfoForIMSConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p0, v1, v11}, Lcom/android/incallui/SecConferenceManagerIMSFragment;->setRowVisible(IZ)V

    goto :goto_1

    :cond_1
    return-void
.end method
