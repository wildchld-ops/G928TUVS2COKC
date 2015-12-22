.class Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;
.super Landroid/preference/Preference;
.source "GenericPowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0a11d6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v5, v7}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v5}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    add-int/2addr v1, v4

    :cond_1
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v5}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    const v5, 0x7f1002e1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v5, v7}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v6, 0x7f0a11d7

    invoke-virtual {v5, v6}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v6, 0x7f0a11d8

    invoke-virtual {v5, v6}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v6, 0x7f0a11d9

    invoke-virtual {v5, v6}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
