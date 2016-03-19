.class public Lcom/ime/implement/view/candidate/CandidateMobileKeyboardUmlautButtonLayout;
.super Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
.source "CandidateMobileKeyboardUmlautButtonLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getButtonTypeface()Landroid/graphics/Typeface;
    .locals 2

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/FontManager;->getSystemFont()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method protected getFirstButtonId()I
    .locals 1

    const v0, 0x7f100030

    return v0
.end method

.method protected getSecondButtonId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setButtonListener(Landroid/view/View;)V
    .locals 0

    return-void
.end method
