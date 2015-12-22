.class Lcom/android/settings/fuelgauge/PowerUsageSummary$3;
.super Landroid/preference/Preference;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f100080

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f100081

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addedSome:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
