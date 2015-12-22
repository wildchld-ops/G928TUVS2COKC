.class public Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHelpScreenPreference.java"


# instance fields
.field private mMaxClient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v1, 0x7f040222

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setLayoutResource(I)V

    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f0a0488

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v4, 0x7f1004d2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f100187

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1004d3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "TMO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0202a6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const-string v4, "SPRINT"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VZW"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ATT"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    const v4, 0x7f0202a5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v4, "TMO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0a0485

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const-string v4, "NEWCO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0a0486

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_MaxClient4MobileApNetExtension"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0487

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setMaxClient(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->notifyHierarchyChanged()V

    return-void
.end method
