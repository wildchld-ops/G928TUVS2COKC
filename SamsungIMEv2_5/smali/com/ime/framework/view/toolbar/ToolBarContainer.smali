.class public Lcom/ime/framework/view/toolbar/ToolBarContainer;
.super Landroid/widget/RelativeLayout;
.source "ToolBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;,
        Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;,
        Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    }
.end annotation


# static fields
.field public static final TOOLBAR_MAX_ITEMS_SCROLL_SHOWING:F = 7.5f

.field public static final TOOLBAR_MAX_ITEMS_SHOWING:I = 0x8

.field public static final TOOLBAR_TABLET_ITEM_SIZE:I = 0x5

.field private static mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;


# instance fields
.field public PhoneToolbarOrders:[I

.field public TabletToolbarOrders:[I

.field private mDisableItemsVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
            ">;"
        }
    .end annotation
.end field

.field private mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field public mInvisibleItemsVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z

.field private mLastItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field private mPageMeasuredWidth:I

.field private mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field private mToolBarHeight:I

.field private mToolBarIconsRes:[[I

.field public mToolBarItemsVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
            ">;"
        }
    .end annotation
.end field

.field private mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

.field private mToolbarClose:Landroid/widget/ImageButton;

.field private mToolbarItemLabels:[[I

.field mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

.field private mToolbarScrollView:Landroid/widget/HorizontalScrollView;

.field private mToolbarShadowEffectRes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPageMeasuredWidth:I

    const/16 v0, 0xb

    new-array v0, v0, [I

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v6

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v7

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->PhoneToolbarOrders:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v6

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v7

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->TabletToolbarOrders:[I

    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f020701

    aput v2, v1, v5

    const v2, 0x7f0200c2

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206ee

    aput v2, v1, v5

    const v2, 0x7f0200b6

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206f1

    aput v2, v1, v5

    const v2, 0x7f0200b9

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206eb

    aput v2, v1, v5

    const v2, 0x7f0200b3

    aput v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206dd

    aput v2, v1, v5

    const v2, 0x7f0200a5

    aput v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206fe

    aput v3, v2, v5

    const v3, 0x7f0200bf

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206e5

    aput v3, v2, v5

    const v3, 0x7f0200ad

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206f5

    aput v3, v2, v5

    const v3, 0x7f0200bc

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f020704

    aput v3, v2, v5

    const v3, 0x7f0200c5

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206e2

    aput v3, v2, v5

    const v3, 0x7f0200aa

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206e8

    aput v3, v2, v5

    const v3, 0x7f0200b0

    aput v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarShadowEffectRes:[[I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$100(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateCloseButtonBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    return-object v0
.end method

.method private configToolBarItems()V
    .locals 15

    const/4 v14, -0x1

    const/4 v8, 0x1

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v12

    iput-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v3

    :cond_0
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v2

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isVoiceInputSelected()Z

    move-result v5

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v4

    if-nez v5, :cond_4

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isClipboardEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_1
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isEmoticonDisabled()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_2
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->dismissFloatingKeyboard()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_3
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isSettingEnabled()Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_6
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->PhoneToolbarOrders:[I

    array-length v10, v12

    :goto_7
    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarOrderArray()[I

    move-result-object v12

    array-length v9, v12

    if-gt v10, v9, :cond_15

    :goto_8
    const/4 v0, 0x0

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v10, :cond_19

    const/4 v11, 0x1

    if-eqz v11, :cond_16

    if-eqz v8, :cond_16

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarOrderArray()[I

    move-result-object v12

    aget v6, v12, v0

    :goto_a
    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v12

    aget-object v7, v12, v6

    invoke-direct {p0, v7}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isInvisibleItem(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)Z

    move-result v12

    if-eqz v12, :cond_18

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_4
    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_0

    :cond_7
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_1

    :cond_8
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isNumberInputKeyboard()Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isSettingEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_2

    :cond_c
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_3

    :cond_d
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isControlPanelDisabled()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_e
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_4

    :cond_10
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isKeyboardTypeDisabled()Z

    move-result v12

    if-nez v12, :cond_11

    if-nez v3, :cond_11

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v12

    if-eqz v12, :cond_12

    :cond_11
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v14}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    sget-object v13, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_5

    :cond_13
    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v12

    invoke-direct {p0, v12, v8}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setToolBarIcon(II)V

    goto/16 :goto_6

    :cond_14
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->TabletToolbarOrders:[I

    array-length v10, v12

    goto/16 :goto_7

    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_16
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v12

    if-nez v12, :cond_17

    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->PhoneToolbarOrders:[I

    aget v6, v12, v0

    goto/16 :goto_a

    :cond_17
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->TabletToolbarOrders:[I

    aget v6, v12, v0

    goto/16 :goto_a

    :cond_18
    iget-object v12, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v12, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_19
    sget-boolean v12, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v12, :cond_1a

    const-string v12, "SamsungIME_UnifiedIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ToolBarContainer Tool bar items are :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method private configToolBarSymbols()V
    .locals 5

    sget-object v4, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    sget-object v4, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    move v1, v3

    :goto_0
    if-gt v1, v0, :cond_0

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v4

    aget-object v2, v4, v1

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableTemporaryHWR()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private disableTextTemplate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private dismissFloatingKeyboard()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;-><init>(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V

    return-object v0
.end method

.method private getScrollViewAdjustOffsets()I
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarItemsNum()I

    move-result v0

    const/16 v8, 0x8

    if-ge v0, v8, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getScrollViewWidth()I

    move-result v4

    iget-object v8, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f090799

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    move v5, v0

    mul-int v8, v5, v6

    sub-int v7, v4, v8

    rem-int v8, v7, v0

    if-eqz v8, :cond_2

    int-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    rem-int v9, v7, v0

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v1, v8

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public static getToolbarStatus()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    return-object v0
.end method

.method private isInvisibleItem(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarEditUnChecked()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v4

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_3

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isItemUpdated(Ljava/util/Vector;Ljava/util/Vector;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    if-eqz v4, :cond_2

    :cond_0
    sget-boolean v5, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "SamsungIME_UnifiedIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ToolBarContainer isItemUpdated()  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mIsDragging:Z

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setPageSavedWidth(I)V

    return-void
.end method

.method private setFloatingToolBarIcon(II)V
    .locals 6

    const v5, 0x7f0200be

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    array-length v1, v2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne p1, v2, :cond_18

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200b8

    aput v3, v2, v4

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200a4

    aput v3, v2, v4

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200c4

    aput v3, v2, v4

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200c1

    aput v3, v2, v4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200bb

    aput v3, v2, v4

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v5, v2, v4

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_7

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200ac

    aput v3, v2, v4

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_8

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200a9

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_8
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_9

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v5, v2, v4

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_a

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200af

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_a
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_b

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200b2

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_b
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_c

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200b5

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_c
    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarContainer setToolBarIcon(): Unknown param index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_d

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200b7

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_d
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_e

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200a3

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_e
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_f

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200c3

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_f
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_10

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200c0

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_10
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_11

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200ba

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_11
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_12

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200bd

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_12
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_13

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200ab

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_13
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_14

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200a8

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_14
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_15

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200ae

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_15
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_16

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200b1

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_16
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_17

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0200b4

    aput v3, v2, v4

    goto/16 :goto_1

    :cond_17
    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarContainer setToolBarIcon(): Unknown param index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setToolBarIcon(II)V
    .locals 8

    const v7, 0x7f0206fd

    const v6, 0x7f0206e4

    const v5, 0x7f0206e3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setFloatingToolBarIcon(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    array-length v1, v2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne p1, v2, :cond_1f

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206f0

    aput v3, v2, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206dc

    aput v3, v2, v4

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f020703

    aput v3, v2, v4

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f020700

    aput v3, v2, v4

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206f4

    aput v3, v2, v4

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_7

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v7, v2, v4

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_b

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v2

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v6, v2, v4

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v2

    if-eq v2, v4, :cond_9

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v6, v2, v4

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v6, v2, v4

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_c

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206e1

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_d

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v7, v2, v4

    goto/16 :goto_0

    :cond_d
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_e

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206e7

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_e
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_f

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206ea

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_f
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_10

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206ed

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_10
    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarContainer setToolBarIcon()...param index is exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_11

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206ef

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_11
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_12

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206db

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_12
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_13

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f020702

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_13
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_14

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206ff

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_14
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_15

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206f3

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_15
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_16

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206fc

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_16
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1a

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v2

    if-ne v2, v4, :cond_17

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v5, v2, v4

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v2

    if-eq v2, v4, :cond_18

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v5, v2, v4

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    aput v5, v2, v4

    goto/16 :goto_0

    :cond_1a
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1b

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206e0

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_1b
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1c

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206e6

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_1c
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1d

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206e9

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_1d
    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1e

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0206ec

    aput v3, v2, v4

    goto/16 :goto_0

    :cond_1e
    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarContainer setToolBarIcon(): Unknown param index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showSipHideButton(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateCloseButtonBackground()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateHideButtonLayoutParam()V

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    invoke-direct {v0, p0, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;-><init>(Lcom/ime/framework/view/toolbar/ToolBarContainer;Lcom/ime/framework/view/toolbar/ToolBarContainer$1;)V

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    goto :goto_0
.end method

.method private updateCloseButtonBackground()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0206d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTransparentKeypad()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getTransparencyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateHideButtonLayoutParam()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getHideButtonWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateScrollViewLayoutParam()V
    .locals 4

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getScrollViewAdjustOffsets()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getScrollViewWidth()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const v3, 0x7f1000f5

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private updateToolbarBackground()V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarPressedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateTransparency(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTransparentKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getTransparencyLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-object p1

    :cond_0
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getDisableItems()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    return-object v0
.end method

.method public getDragItemPageIndex()I
    .locals 2

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarView;->getDragItemPageIndex()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getDragShadowDrawable(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    array-length v3, v5

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v2, v5, v6

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v5

    if-ne v5, v2, :cond_2

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v0, v5, v6

    :cond_0
    sget-boolean v5, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "getDragShadowDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "res is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHideButtonOverlapWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090793

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method public getHideButtonWidth()I
    .locals 5

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09079a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b7f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarItemsNum()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSplitRightKeyboardWidth()I

    move-result v3

    div-int v2, v3, v1

    goto :goto_0
.end method

.method public getLastItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mLastItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-object v0
.end method

.method public getPageSavedWidth()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPageMeasuredWidth:I

    return v0
.end method

.method public getScrollViewWidth()I
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getFloatingKeyboardWidth()I

    move-result v2

    :goto_0
    const/4 v1, 0x0

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sget-object v4, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getHideButtonWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getHideButtonOverlapWidth()I

    move-result v4

    add-int v1, v3, v4

    :goto_1
    return v1

    :cond_0
    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSplitRightKeyboardWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScrollViewWidth() toolbarWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getTabletToolbarWidth()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getFloatingKeyboardWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSplitRightKeyboardWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTabletToolbarWidth() measuredWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToolBarIconsResArray()[[I
    .locals 2

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getInstance()Lcom/ime/framework/view/toolbar/ToolBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolBarIconsResArray()[[I

    move-result-object v1

    return-object v1
.end method

.method public getToolBarItemsNum()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getToolBarVecValue(I)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    goto :goto_0
.end method

.method public getToolbarCloseButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getToolbarItemDescription(I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarItemLabels:[[I

    array-length v2, v4

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarItemLabels:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarItemLabels:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget v3, v4, v5

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getToolbarItemSize()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getToolbarNormalBg()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateTransparency(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public getToolbarPressedBg()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateTransparency(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public getToolbarShadowEffectRes(I)I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarShadowEffectRes:[[I

    array-length v2, v7

    iget-object v7, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    move v1, v5

    :goto_0
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v7, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarShadowEffectRes:[[I

    aget-object v7, v7, v0

    aget v4, v7, v6

    if-ne p1, v4, :cond_4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarShadowEffectRes:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x2

    aget v3, v5, v6

    :cond_1
    :goto_2
    return v3

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarShadowEffectRes:[[I

    aget-object v6, v6, v0

    aget v3, v6, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getToolbarView()Lcom/ime/framework/view/toolbar/ToolBarView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    const-string v1, "SamsungIME_UnifiedIME"

    const-string v2, "ToolBarContainer initialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const v1, 0x7f1000f3

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarScrollView:Landroid/widget/HorizontalScrollView;

    const v1, 0x7f1000f4

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/toolbar/ToolBarView;

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarView;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarNormalBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getInstance()Lcom/ime/framework/view/toolbar/ToolBarManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarManager;->initToolbarOrderVariable()V

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarManager;->readToolbarOrder()V

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolBarIconsResArray()[[I

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarIconsRes:[[I

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolBarLabels()[[I

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarItemLabels:[[I

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09050d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarHeight:I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090728

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarHeight:I

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mIsDragging:Z

    return v0
.end method

.method protected final isFloating()Z
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isLandscape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolbarStatusUpdated()Z
    .locals 12

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isKeyGuardScreen()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isEncryptedScreen()Z

    move-result v9

    if-nez v9, :cond_0

    if-gtz v5, :cond_1

    :cond_0
    move v8, v7

    :goto_0
    return v8

    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->configToolBarItems()V

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_3
    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInvisibleItemsVec:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    if-ne v2, v5, :cond_6

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v10

    if-eq v9, v10, :cond_9

    :cond_6
    const/4 v7, 0x1

    :cond_7
    :goto_5
    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "SamsungIME_UnifiedIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarContainer isToolbarStatusUpdated()  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v8, v7

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v6, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isItemUpdated(Ljava/util/Vector;Ljava/util/Vector;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {p0, v4, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isItemUpdated(Ljava/util/Vector;Ljava/util/Vector;)Z

    move-result v7

    goto :goto_5
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_0
    const/16 v1, 0x80

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HIDE_IME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->sendAccessibilityEventToReadLabel(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getTabletToolbarWidth()I

    move-result v1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public recycleVariables()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarView;->recycleVariables()V

    iput-object v2, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    :cond_1
    return-void
.end method

.method public sendAccessibilityEventToReadLabel(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ToolBarContainer sendAccessibilityEventToRead: item description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setLastItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mLastItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-void
.end method

.method public setOnDraggingFlag(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mIsDragging:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mIsDragging:Z

    :cond_0
    return-void
.end method

.method public setPageSavedWidth(I)V
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPageMeasuredWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mPageMeasuredWidth:I

    :cond_0
    return-void
.end method

.method public setToolbarViewSymbolActiveState()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarView;->resetToolbarSymbolActiveState()V

    :cond_0
    return-void
.end method

.method public updateLastItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mLastItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mLastItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    :cond_0
    return-void
.end method

.method public updateToolBarPage(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarContainer updateToolBarPage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKeyGuardScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEncryptedScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_4

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->configToolBarItems()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->showSipHideButton(Z)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateToolbarBackground()V

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    if-nez v0, :cond_3

    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarView;

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarView;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarNormalBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->resetVariables()V

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolBarView:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {v0, p1, p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->updateToolBarView(ZLcom/ime/framework/view/toolbar/ToolBarContainer;)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateScrollViewLayoutParam()V

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->requestLayout()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->configToolBarSymbols()V

    invoke-direct {p0, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->showSipHideButton(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setBackgroundColor(I)V

    goto :goto_1
.end method
