.class public Lcom/ime/framework/view/toolbar/ToolBarManager;
.super Ljava/lang/Object;
.source "ToolBarManager.java"


# static fields
.field private static final PREF_TOOLBAR_EDIT_UNCHECKED:Ljava/lang/String; = "toolbar_edit_unchecked"

.field private static final PREF_TOOLBAR_ORDER_LIST:Ljava/lang/String; = "toolbar_order_list"

.field public static PhoneToolbarOrders:[I = null

.field public static final TOOLBAR_ORDER_LENGTH:I

.field private static final TOOLBAR_ORDER_SPLIT:Ljava/lang/String; = "-"

.field public static TabletToolbarOrders:[I

.field static mInputManager:Lcom/ime/framework/common/InputManager;

.field private static mInstance:Lcom/ime/framework/view/toolbar/ToolBarManager;

.field private static mToolbarOrderArray:[I


# instance fields
.field private final COUNTRY_CODE:Ljava/lang/String;

.field private mEditCheckBoxStatus:[Z

.field public mToolBarIconsRes:[[I

.field public mToolbarItemLabels:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-direct {v0}, Lcom/ime/framework/view/toolbar/ToolBarManager;-><init>()V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInstance:Lcom/ime/framework/view/toolbar/ToolBarManager;

    const/16 v0, 0xb

    new-array v0, v0, [I

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v3

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v6

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v7

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

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->PhoneToolbarOrders:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v3

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v6

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    aput v1, v0, v7

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->TabletToolbarOrders:[I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->TabletToolbarOrders:[I

    array-length v0, v0

    :goto_0
    sput v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->TOOLBAR_ORDER_LENGTH:I

    sget v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->TOOLBAR_ORDER_LENGTH:I

    new-array v0, v0, [I

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    return-void

    :cond_0
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->PhoneToolbarOrders:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->COUNTRY_CODE:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206db

    aput v2, v1, v5

    const v2, 0x7f0206dd

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206ff

    aput v2, v1, v5

    const v2, 0x7f020701

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206ec

    aput v2, v1, v5

    const v2, 0x7f0206ee

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206ef

    aput v2, v1, v5

    const v2, 0x7f0206f1

    aput v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0206e9

    aput v2, v1, v5

    const v2, 0x7f0206eb

    aput v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206e0

    aput v3, v2, v5

    const v3, 0x7f0206e2

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206f3

    aput v3, v2, v5

    const v3, 0x7f0206f5

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206fc

    aput v3, v2, v5

    const v3, 0x7f0206fe

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206e3

    aput v3, v2, v5

    const v3, 0x7f0206e5

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206e6

    aput v3, v2, v5

    const v3, 0x7f0206e8

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f020702

    aput v3, v2, v5

    const v3, 0x7f020704

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HIDE_IME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0206de

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d03ba

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d03b9

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d03bc

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d03bb

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolBarIconsRes:[[I

    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0d0309

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0d0314

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0d0121

    aput v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0d030f

    aput v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0d030c

    aput v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d0311

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d030b

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d0313

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d030d

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d030e

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HIDE_IME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d030a

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [I

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d0310

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarItemLabels:[[I

    return-void
.end method

.method private configEditCheckBoxStatus(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v6, v3, [Z

    iput-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mEditCheckBoxStatus:[Z

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarEditUnChecked()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mEditCheckBoxStatus:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mEditCheckBoxStatus:[Z

    const/4 v7, 0x0

    aput-boolean v7, v6, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/ime/framework/view/toolbar/ToolBarManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInstance:Lcom/ime/framework/view/toolbar/ToolBarManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-direct {v0}, Lcom/ime/framework/view/toolbar/ToolBarManager;-><init>()V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInstance:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInstance:Lcom/ime/framework/view/toolbar/ToolBarManager;

    return-object v0
.end method

.method private getToolbarContainerItems()Ljava/util/Vector;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v11

    sput-object v11, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget v4, Lcom/ime/framework/view/toolbar/ToolBarManager;->TOOLBAR_ORDER_LENGTH:I

    new-array v8, v4, [Z

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aput-boolean v13, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isVoiceInputSelected()Z

    move-result v1

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v1, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v12, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v13, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v12, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v13, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v12, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v12, v8, v11

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v11

    aput-boolean v12, v8, v11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-boolean v11, v8, v0

    if-nez v11, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarOrderArray()[I

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    aget v6, v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_3

    invoke-virtual {v10, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v6, v11, :cond_5

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    sget-boolean v11, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_7

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v0, v11, :cond_7

    const-string v11, "SamsungIME_UnifiedIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ToolBarManager toolbar edit showing item is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v13

    aget-object v13, v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-object v7
.end method

.method public static getToolbarEditUnChecked()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    sput-object v4, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget-object v4, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "toolbar_edit_unchecked"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getToolbarOrderArray()[I
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    return-object v0
.end method

.method private initToolbarOrderWithDef()V
    .locals 3

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    sput-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->PhoneToolbarOrders:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarManager;->PhoneToolbarOrders:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->TabletToolbarOrders:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarManager;->TabletToolbarOrders:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private readToolbarOrderFromSetting([Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    move v3, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    :try_start_0
    sget-object v7, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    sget-object v7, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v7, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v7, -0x1

    if-le v2, v7, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move v2, v3

    :goto_2
    const-string v7, "SamsungIME_UnifiedIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static setToolbarEditUnChecked(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "toolbar_edit_unchecked"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setToolbarOrderArray([I)V
    .locals 3

    array-length v1, p0

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    aget v2, p0, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeToolbarOrder()V
    .locals 5

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "toolbar_order_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getEditCheckBoxStatus()[Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mEditCheckBoxStatus:[Z

    return-object v0
.end method

.method public getToolBarIconsResArray()[[I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolBarIconsRes:[[I

    return-object v0
.end method

.method public getToolBarLabels()[[I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarItemLabels:[[I

    return-object v0
.end method

.method public getToolbarEditItems()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarContainerItems()Ljava/util/Vector;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v4

    if-eq v0, v4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/ime/framework/view/toolbar/ToolBarManager;->configEditCheckBoxStatus(Ljava/util/Vector;)V

    return-object v2
.end method

.method public initToolbarOrderVariable()V
    .locals 2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readToolbarOrder()V
    .locals 8

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "toolbar_order_list"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    sget-object v5, Lcom/ime/framework/view/toolbar/ToolBarManager;->mToolbarOrderArray:[I

    array-length v1, v5

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarManager;->initToolbarOrderWithDef()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/ime/framework/view/toolbar/ToolBarManager;->readToolbarOrderFromSetting([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mInstance:Lcom/ime/framework/view/toolbar/ToolBarManager;

    return-void
.end method

.method public resetSettingToolbar()V
    .locals 2

    const-string v0, "SamsungIME_UnifiedIME"

    const-string v1, "resetSettingToolbar"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarManager;->initToolbarOrderVariable()V

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->writeToolbarOrder()V

    return-void
.end method

.method public setCheckedStatusValue(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mEditCheckBoxStatus:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarManager;->mEditCheckBoxStatus:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method
