.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public color:I

.field private mContext:Landroid/content/Context;

.field private summaryResID:I

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    const v0, 0x7f040172

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    const v3, 0x7f040172

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d008b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0d008c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0659

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    iput p4, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    return-void

    :cond_0
    const v3, -0xff01

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public SetColor(I)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d008b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0d008c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f100023

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f02029f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    const v4, -0xff01

    if-ne v3, v4, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setSummary(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
