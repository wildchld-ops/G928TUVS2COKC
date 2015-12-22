.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    return-void
.end method

.method private init()V
    .locals 1

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$5300()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1090059

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mLayoutId:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x1090058

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const v7, -0x777778

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v6

    if-nez v6, :cond_5

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$5300()Z

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x1090059

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :goto_0
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x1020367

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v2, :cond_3

    const-string v6, "#FF000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-eqz v4, :cond_4

    const-string v6, "#6B6F72"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-object v5

    :cond_5
    const v6, 0x1090058

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
