.class public Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsLeftMenuArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuList:[Ljava/lang/String;

.field private mSelectedMenuIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mSelectedMenuIndex:I

    iput-object p1, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mMenuList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mMenuList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mSelectedMenuIndex:I

    if-ne v1, p1, :cond_1

    const v1, 0x7f0202ce

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-object p2
.end method

.method public setSelectedMenuIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->mSelectedMenuIndex:I

    return-void
.end method
