.class public final enum Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
.super Ljava/lang/Enum;
.source "ToolBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/toolbar/ToolBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolBarItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_HIDE_IME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_CLIPBOARD"

    invoke-direct {v0, v1, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_INPUT_MODES"

    invoke-direct {v0, v1, v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_VOICE"

    invoke-direct {v0, v1, v5}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_EMOTICON"

    invoke-direct {v0, v1, v6}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SELECTION_CONTROL"

    invoke-direct {v0, v1, v7}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_TEXTTEMPLATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_HANDWRITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_KEYBOARD_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_IME_SETTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_THEME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_OCR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_HIDE_IME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HIDE_IME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_COMMON"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_ANGLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_HALF_ANGLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_EMOTION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HIDE_IME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->$VALUES:[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 1

    const-class v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-object v0
.end method

.method public static values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->$VALUES:[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v0}, [Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-object v0
.end method
