.class public Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;
.super Landroid/preference/Preference;
.source "MusicsSyncDescriptionPreference.java"


# instance fields
.field private dividerView:Landroid/view/View;

.field private syncDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f100421

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a1172

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a1187

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a117a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f1000b9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method showDivider(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
