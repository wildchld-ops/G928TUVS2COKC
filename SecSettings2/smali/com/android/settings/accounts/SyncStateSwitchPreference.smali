.class public Lcom/android/settings/accounts/SyncStateSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    const v0, 0x7f04018a

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 11

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v6, 0x7f100359

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/AnimatedImageView;

    const v6, 0x7f100358

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    if-eqz v6, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    if-eqz v0, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/settings/widget/AnimatedImageView;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/AnimatedImageView;->setAnimating(Z)V

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    move v1, v9

    :goto_2
    if-eqz v1, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020404

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v6, :cond_5

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0a0be2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v1, v7

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    return-void
.end method
