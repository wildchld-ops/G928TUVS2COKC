.class public Lcom/ime/framework/view/SymbolKeyTextView;
.super Landroid/widget/TextView;
.source "SymbolKeyTextView.java"


# static fields
.field private static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mTextFixedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mTextFixedWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object p1, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolKeyTextView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mTextFixedWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object p1, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolKeyTextView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mTextFixedWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object p1, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolKeyTextView;->initialize()V

    return-void
.end method


# virtual methods
.method public getFixedWidth()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mTextFixedWidth:I

    return v0
.end method

.method public initialize()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const v3, 0x7f020430

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/ime/framework/view/SymbolKeyTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/SymbolKeyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/SymbolKeyTextView;->setGravity(I)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/SymbolKeyTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/ime/framework/view/SymbolKeyTextView;->setPadding(IIII)V

    return-void

    :cond_0
    const v3, 0x7f0205aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolKeyTextView;->mTextFixedWidth:I

    return-void
.end method
