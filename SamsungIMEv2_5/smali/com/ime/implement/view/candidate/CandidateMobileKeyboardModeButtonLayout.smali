.class public Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;
.super Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
.source "CandidateMobileKeyboardModeButtonLayout.java"


# static fields
.field private static final TAG_BUTTON_NEXT:Ljava/lang/String; = "button_next"

.field private static final TAG_BUTTON_PREV:Ljava/lang/String; = "mode"


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

.method static synthetic access$000(Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method protected getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const-string v2, "mode"

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0205b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "button_next"

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0205af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f0205b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
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
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const-string v1, "mode"

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$1;-><init>(Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$2;

    invoke-direct {v1, p0}, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$2;-><init>(Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "button_next"

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$3;

    invoke-direct {v1, p0}, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$3;-><init>(Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$4;

    invoke-direct {v1, p0}, Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout$4;-><init>(Lcom/ime/implement/view/candidate/CandidateMobileKeyboardModeButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method
