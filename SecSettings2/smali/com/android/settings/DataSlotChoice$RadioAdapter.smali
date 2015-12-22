.class public Lcom/android/settings/DataSlotChoice$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public itemList:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field public mFlag:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[Z)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->itemList:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    iput-object p3, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->itemList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400f7

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->itemList:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    return-object p2
.end method

.method public setFlag([Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    return-void
.end method
