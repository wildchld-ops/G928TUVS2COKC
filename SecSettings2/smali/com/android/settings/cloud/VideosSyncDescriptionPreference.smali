.class public Lcom/android/settings/cloud/VideosSyncDescriptionPreference;
.super Landroid/preference/Preference;
.source "VideosSyncDescriptionPreference.java"


# instance fields
.field private dividerView:Landroid/view/View;

.field private syncDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f100421

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a1172

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a1179

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v2, 0x7f1000b9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isVideoSync()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method showDivider(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/cloud/VideosSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
