.class final Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BottomPanelAdapter"
.end annotation


# instance fields
.field arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field layout:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ActionItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->layout:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionItem;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ActionItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemActionId(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionItem;

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionItem;->id:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    move v1, p1

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->isEnabledShowBtnBg:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$4300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x108096f

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ActionItem;

    iget v3, v3, Lcom/android/internal/app/ResolverActivity$ActionItem;->icon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x1020077

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ActionItem;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ActionItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
