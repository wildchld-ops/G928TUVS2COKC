.class public Lcom/ime/implement/view/chinesespell/SpellLayout;
.super Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;
.source "SpellLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getSpellViewId()I
    .locals 1

    const v0, 0x7f100082

    return v0
.end method

.method protected getSpellViewLeftEdge()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/chinesespell/SpellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSpellViewTextSize()F
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/chinesespell/SpellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/chinesespell/SpellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method
