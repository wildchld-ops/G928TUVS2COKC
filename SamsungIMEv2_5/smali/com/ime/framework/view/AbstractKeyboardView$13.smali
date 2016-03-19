.class Lcom/ime/framework/view/AbstractKeyboardView$13;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Lcom/ime/framework/view/SymbolScrollView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractKeyboardView;->getScrollCallBack(Lcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Key;)Lcom/ime/framework/view/SymbolScrollView$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pgDnIcon:Landroid/graphics/drawable/Drawable;

.field pgDnIconDim:Landroid/graphics/drawable/Drawable;

.field pgUpIcon:Landroid/graphics/drawable/Drawable;

.field pgUpIconDim:Landroid/graphics/drawable/Drawable;

.field res:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/ime/framework/view/AbstractKeyboardView;

.field final synthetic val$pgDnKey:Lcom/ime/framework/view/Keyboard$Key;

.field final synthetic val$pgUpKey:Lcom/ime/framework/view/Keyboard$Key;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;Lcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Key;)V
    .locals 2

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p2, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgUpKey:Lcom/ime/framework/view/Keyboard$Key;

    iput-object p3, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgDnKey:Lcom/ime/framework/view/Keyboard$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->res:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->res:Landroid/content/res/Resources;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgUpIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->res:Landroid/content/res/Resources;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgDnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->res:Landroid/content/res/Resources;

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgUpIconDim:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->res:Landroid/content/res/Resources;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgDnIconDim:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateKeyboardView()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public onScrollToBottom()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgUpKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgUpIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgDnKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgDnIconDim:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractKeyboardView$13;->updateKeyboardView()V

    return-void
.end method

.method public onScrollToMid()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgUpKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgUpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgDnKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgDnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgUpKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgUpIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgDnKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgDnIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractKeyboardView$13;->updateKeyboardView()V

    :cond_1
    return-void
.end method

.method public onScrollToTop()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgUpKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgUpIconDim:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->val$pgDnKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$13;->pgDnIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractKeyboardView$13;->updateKeyboardView()V

    return-void
.end method
