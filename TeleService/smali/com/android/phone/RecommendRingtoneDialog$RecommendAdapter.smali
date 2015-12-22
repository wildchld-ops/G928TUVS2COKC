.class public Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecommendRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecommendRingtoneDialog;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecommendRingtoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    move-object v3, p2

    :goto_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const v4, 0x7f0a0649

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/phone/RecommendRingtoneDialog;->access$000(Lcom/android/phone/RecommendRingtoneDialog;)I

    move-result v4

    if-ne p1, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/phone/RecommendRingtoneDialog;->access$900(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f04008a

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0a064c

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0a064d

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v4, 0x7f0a064a

    goto :goto_3

    :cond_3
    const v4, 0x7f0a064b

    goto :goto_4

    :cond_4
    move v4, v5

    goto :goto_2
.end method
