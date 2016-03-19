.class public Lcom/ime/framework/view/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/Keyboard$Key;,
        Lcom/ime/framework/view/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GLOBAL_NAVIGATION_BAR_WIDTH:I = 0xc8

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field private static isMass:Z

.field public static mDPYNuanceLayoutMap:[[I

.field private static mInputManager:Lcom/ime/framework/common/InputManager;

.field private static mIsChnMode:Z

.field private static mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;


# instance fields
.field private mBottomPadding:I

.field private mCellHeight:I

.field private mCellWidth:I

.field mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field public mIsShuangPinMode:Z

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mLeftPadding:I

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mRightPadding:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

.field private mShifted:Z

.field protected mTopPadding:I

.field private mTotalDisplayWidth:I

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mXmlLayoutResId:I

.field row:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/view/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getInstance()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/ime/framework/view/Keyboard;->SEARCH_DISTANCE:F

    sget-object v0, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    sput-boolean v0, Lcom/ime/framework/view/Keyboard;->mIsChnMode:Z

    const/16 v0, 0x1a

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v3, [I

    const v2, 0xf255

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    const v3, 0xf250

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v5, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/framework/view/Keyboard;->mDPYNuanceLayoutMap:[[I

    return-void

    :array_0
    .array-data 4
        0xf240
        0xf259
        0xf263
    .end array-data

    :array_1
    .array-data 4
        0xf245
        0xf256
    .end array-data

    :array_2
    .array-data 4
        0xf241
        0xf257
    .end array-data

    :array_3
    .array-data 4
        0xf244
        0xf258
    .end array-data

    :array_4
    .array-data 4
        0xf247
        0xf262
        0xf265
    .end array-data

    :array_5
    .array-data 4
        0xf243
        0xf267
    .end array-data

    :array_6
    .array-data 4
        0xf233
        0xf25a
    .end array-data

    :array_7
    .array-data 4
        0xf24a
        0xf264
        0xf26f
    .end array-data

    :array_8
    .array-data 4
        0xf23f
        0xf266
    .end array-data

    :array_9
    .array-data 4
        0xf242
        0xf251
    .end array-data

    :array_a
    .array-data 4
        0xf234
        0xf254
    .end array-data

    :array_b
    .array-data 4
        0xf236
        0xf252
    .end array-data

    :array_c
    .array-data 4
        0xf237
        0xf253
    .end array-data

    :array_d
    .array-data 4
        0xf238
        0xf25d
        0xf26b
    .end array-data

    :array_e
    .array-data 4
        0xf239
        0xf25c
    .end array-data

    :array_f
    .array-data 4
        0xf23a
        0xf261
    .end array-data

    :array_10
    .array-data 4
        0xf23b
        0xf260
    .end array-data

    :array_11
    .array-data 4
        0xf248
        0xf26e
    .end array-data

    :array_12
    .array-data 4
        0xf246
        0xf269
        0xf26c
        0xf271
    .end array-data

    :array_13
    .array-data 4
        0xf232
        0xf26a
    .end array-data

    :array_14
    .array-data 4
        0xf249
        0xf26d
        0xf270
    .end array-data

    :array_15
    .array-data 4
        0xf231
        0xf25b
        0xf268
    .end array-data

    :array_16
    .array-data 4
        0xf23d
        0xf25e
    .end array-data

    :array_17
    .array-data 4
        0xf23c
        0xf25f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v7, v10, [Lcom/ime/framework/view/Keyboard$Key;

    aput-object v11, v7, v9

    const/4 v8, 0x1

    aput-object v11, v7, v8

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard;->mIsShuangPinMode:Z

    const/4 v7, -0x1

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->mXmlLayoutResId:I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v7, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    sget-object v7, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v5, Landroid/graphics/Point;->x:I

    sub-int v0, v3, v4

    if-eqz v0, :cond_0

    iget v7, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/ime/framework/view/Keyboard;->isMass:Z

    sget-object v7, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v7

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard;->mIsShuangPinMode:Z

    iput v9, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    div-int/lit8 v7, v7, 0xa

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v9, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    iput p3, p0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    iput p2, p0, Lcom/ime/framework/view/Keyboard;->mXmlLayoutResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/ime/framework/view/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Lcom/ime/framework/view/Keyboard$Key;

    aput-object v4, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/ime/framework/view/Keyboard;->mIsShuangPinMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/Keyboard;->mXmlLayoutResId:I

    iput p4, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    iput p5, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/ime/framework/view/Keyboard;->isMass:Z

    sget-object v0, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard;->mIsShuangPinMode:Z

    iput v2, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v2, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    iput p3, p0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    iput p2, p0, Lcom/ime/framework/view/Keyboard;->mXmlLayoutResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ime/framework/view/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 14

    invoke-direct/range {p0 .. p2}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    iput v11, p0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    const/4 v11, 0x0

    iput v11, p0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0007

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/ime/framework/view/Keyboard;->isMass:Z

    sget-object v11, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u2026\u2026"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v2, 0x1

    :goto_0
    new-instance v8, Lcom/ime/framework/view/Keyboard$Row;

    invoke-direct {v8, p0}, Lcom/ime/framework/view/Keyboard$Row;-><init>(Lcom/ime/framework/view/Keyboard;)V

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    iput v11, v8, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v11, v8, Lcom/ime/framework/view/Keyboard$Row;->defaultWidth:I

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    iput v11, v8, Lcom/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    iput v11, v8, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    const/16 v11, 0xc

    iput v11, v8, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_5

    const v7, 0x7fffffff

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v3, v7, :cond_0

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    add-int/2addr v11, v9

    add-int v11, v11, p5

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    if-le v11, v12, :cond_1

    :cond_0
    const/4 v9, 0x0

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    const/4 v3, 0x0

    :cond_1
    new-instance v5, Lcom/ime/framework/view/Keyboard$Key;

    invoke-direct {v5, v8}, Lcom/ime/framework/view/Keyboard$Key;-><init>(Lcom/ime/framework/view/Keyboard$Row;)V

    iput v9, v5, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iput v10, v5, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :goto_3
    if-eqz v2, :cond_7

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, -0x3f7

    aput v13, v11, v12

    iput-object v11, v5, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    :goto_4
    const/4 v11, -0x1

    iput v11, v5, Lcom/ime/framework/view/Keyboard$Key;->leftkeyindex:I

    const/4 v11, -0x1

    iput v11, v5, Lcom/ime/framework/view/Keyboard$Key;->rightkeyindex:I

    const/4 v11, -0x1

    iput v11, v5, Lcom/ime/framework/view/Keyboard$Key;->topkeyindex:I

    const/4 v11, -0x1

    iput v11, v5, Lcom/ime/framework/view/Keyboard$Key;->bottomkeyindex:I

    const/4 v11, -0x1

    iput v11, v5, Lcom/ime/framework/view/Keyboard$Key;->currentkeyindex:I

    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/ime/framework/view/Keyboard$Key;->focusstate:Z

    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/ime/framework/view/Keyboard$Key;->pressedstate:Z

    add-int/lit8 v3, v3, 0x1

    iget v11, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    iget v12, v5, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    if-le v9, v11, :cond_2

    iput v9, p0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    iput v9, p0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    :cond_2
    if-eqz v2, :cond_8

    :cond_3
    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move/from16 v7, p4

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v1, v11, v12

    iput-object v11, v5, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/ime/framework/view/Keyboard;->mIsChnMode:Z

    return v0
.end method

.method static synthetic access$1200()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/framework/view/Keyboard;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/ime/framework/view/Keyboard;->isMass:Z

    return v0
.end method

.method static synthetic access$700()Lcom/ime/framework/common/InputManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mLeftPadding:I

    return v0
.end method

.method static synthetic access$900(Lcom/ime/framework/view/Keyboard;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mRightPadding:I

    return v0
.end method

.method private addBottomRowEdgeFlags()V
    .locals 6

    iget-object v4, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/Keyboard$Row;

    iget-object v4, v4, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/Keyboard$Row;

    iget v4, v3, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    iget-object v4, v3, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    iget v4, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iget v5, v3, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v4, v5

    iput v4, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addRightEdgeFlag(Lcom/ime/framework/view/Keyboard$Row;I)V
    .locals 2

    iget-object v0, p1, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    iget v1, v0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_0
.end method

.method private addTopEdgeFlag(Lcom/ime/framework/view/Keyboard$Row;)V
    .locals 4

    iget v2, p1, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p1, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    iget-object v2, p1, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iget v3, p1, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeNearestNeighbors()V
    .locals 15

    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0xa

    iput v11, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    invoke-virtual {p0}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x5

    iput v11, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    const/16 v11, 0x32

    new-array v11, v11, [[I

    iput-object v11, p0, Lcom/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [I

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v11, 0xa

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v11, 0x5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_2

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v2, v1

    :goto_2
    if-ge v5, v8, :cond_1

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ime/framework/view/Keyboard$Key;

    invoke-virtual {v7, v9, v10}, Lcom/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_0

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11, v10}, Lcom/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_0

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v11, v12}, Lcom/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_0

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    add-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v9, v11}, Lcom/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-ge v11, v12, :cond_4

    :cond_0
    add-int/lit8 v1, v2, 0x1

    aput v5, v6, v2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    new-array v0, v2, [I

    invoke-static {v6, v14, v0, v14, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    iget v12, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    div-int v12, v10, v12

    mul-int/lit8 v12, v12, 0xa

    iget v13, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    div-int v13, v9, v13

    add-int/2addr v12, v13

    aput-object v0, v11, v12

    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    add-int/2addr v10, v11

    goto :goto_1

    :cond_2
    iget v11, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    add-int/2addr v9, v11

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private createKey(Landroid/content/Context;Landroid/content/res/XmlResourceParser;IILcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Row;Landroid/content/res/Resources;)Lcom/ime/framework/view/Keyboard$Key;
    .locals 8

    if-eqz p6, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p6

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ime/framework/view/Keyboard;->createKeyFromXml(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Key;

    move-result-object p5

    iget-boolean v0, p5, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p5, :cond_3

    iget-object v0, p5, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p5, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, v7

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aput-object p5, v0, v7

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v7

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    iget-object v0, p6, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p6, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p5, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p5, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iget v0, p6, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    iput v0, p5, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v0, p6, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    iput v0, p5, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    :cond_3
    move-object v0, p5

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p5, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method private getKeyboardHeight(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    if-eq v7, v11, :cond_6

    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v0, "Row"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/ime/framework/view/Keyboard;->createRowFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Row;

    move-result-object v4

    iget v0, v4, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    if-eqz v0, :cond_2

    iget v0, v4, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    if-eq v0, v1, :cond_2

    move v9, v11

    :goto_1
    if-nez v9, :cond_1

    iget-boolean v0, v4, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    if-nez v0, :cond_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/ime/framework/view/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "Key"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keyboard"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2, p2}, Lcom/ime/framework/view/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    iget v5, p0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    goto :goto_0

    :cond_4
    const-string v0, "include"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ime/framework/view/Keyboard;->getLastRowHeight(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Lcom/ime/framework/view/Keyboard$Row;I)I

    move-result v5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v0, "Row"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    iget v0, v4, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int/2addr v5, v0

    iget v0, v4, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int/2addr v5, v0

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/Keyboard;->row:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "Keyboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    sub-int v0, v5, v0

    iput v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    return v0
.end method

.method private getLastRowHeight(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Lcom/ime/framework/view/Keyboard$Row;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Row_Include:[I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Row"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/ime/framework/view/Keyboard;->createRowFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Row;

    move-result-object p4

    iget v7, p4, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    if-eqz v7, :cond_2

    iget v7, p4, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    iget v8, p0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    if-eq v7, v8, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_1

    iget-boolean v7, p4, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    if-nez v7, :cond_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/ime/framework/view/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Row"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget v7, p4, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int/2addr p5, v7

    iget v7, p4, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int/2addr p5, v7

    iget v7, p0, Lcom/ime/framework/view/Keyboard;->row:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/ime/framework/view/Keyboard;->row:I

    goto :goto_0

    :cond_4
    return p5
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 36

    const/16 v25, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v26, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v30, 0x0

    const/16 v18, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ime/framework/view/Keyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v35

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mXmlLayoutResId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v35, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v35

    if-eq v0, v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mXmlLayoutResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/Keyboard;->getKeyboardHeight(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I

    move-result v29

    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_8

    if-eqz v29, :cond_8

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move/from16 v0, v29

    invoke-interface {v3, v0}, Lcom/ime/framework/common/InputManager;->setDefaultKeyboardHeight(I)V

    const/16 v18, 0x1

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v29

    int-to-float v4, v0

    div-float v17, v3, v4

    :cond_3
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_e

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_17

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v3, "Row"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v13, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, Lcom/ime/framework/view/Keyboard;->createRowFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Row;

    move-result-object v6

    iget v7, v6, Lcom/ime/framework/view/Keyboard$Row;->mStartPosX:I

    if-eqz v18, :cond_6

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    int-to-float v3, v3

    iget v4, v6, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v23, v3, v4

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    int-to-float v3, v3

    iget v4, v6, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v22, v3, v4

    move/from16 v0, v23

    float-to-int v3, v0

    iput v3, v6, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    move/from16 v0, v22

    float-to-int v3, v0

    iput v3, v6, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    if-eqz v3, :cond_9

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    if-eq v3, v4, :cond_9

    const/16 v27, 0x1

    :goto_1
    if-nez v27, :cond_4

    iget-boolean v3, v6, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    if-nez v3, :cond_6

    :cond_4
    move/from16 v0, v23

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v23, v3

    add-float v32, v32, v3

    move/from16 v0, v22

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v22, v3

    add-float v31, v31, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v32, v3

    if-lez v3, :cond_5

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v32, v32, v3

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v31, v3

    if-lez v3, :cond_6

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v31, v31, v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    if-eqz v3, :cond_a

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    if-eq v3, v4, :cond_a

    const/16 v30, 0x1

    :goto_2
    if-nez v30, :cond_7

    iget-boolean v3, v6, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    if-nez v3, :cond_3

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ime/framework/view/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v27, 0x0

    goto :goto_1

    :cond_a
    const/16 v30, 0x0

    goto :goto_2

    :cond_b
    const-string v3, "Key"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v25, 0x1

    if-eqz v6, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/ime/framework/view/Keyboard;->createKeyFromXml(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Key;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    if-eqz v3, :cond_3

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v24

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aput-object v26, v3, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v24

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_4
    iget-object v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, v26

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v26

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mStartPosX:I

    if-eqz v3, :cond_13

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mStartPosX:I

    iget v4, v6, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    add-int/2addr v3, v4

    move-object/from16 v0, v26

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    :goto_5
    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    move-object/from16 v0, v26

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Key;->gap:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v20

    const-string v3, "Keyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parse error:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    if-eqz v18, :cond_1b

    add-float v34, v31, v32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v19, v3, v4

    move/from16 v0, v19

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v19, v3

    add-float v34, v34, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v19, v3, v4

    move/from16 v0, v19

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v19, v3

    add-float v34, v34, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    add-int/2addr v3, v4

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    int-to-float v9, v9

    mul-float v9, v9, v17

    add-float/2addr v4, v9

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move/from16 v0, v34

    float-to-int v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    sget-object v9, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v9

    sub-int/2addr v4, v9

    sub-int v4, v29, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    :cond_f
    :goto_6
    return-void

    :cond_10
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    :cond_11
    :try_start_1
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x6

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_12
    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    move-object/from16 v0, v26

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    int-to-float v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    goto/16 :goto_4

    :cond_13
    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    move-object/from16 v0, v26

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    goto/16 :goto_5

    :cond_14
    const-string v3, "Keyboard"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/ime/framework/view/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v22, v3, v4

    move/from16 v0, v22

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v31, v22, v3

    int-to-float v3, v8

    int-to-float v4, v8

    mul-float v4, v4, v17

    add-float/2addr v3, v4

    float-to-int v8, v3

    goto/16 :goto_0

    :cond_15
    const-string v3, "include"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v13, :cond_16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v12, p2

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v18}, Lcom/ime/framework/view/Keyboard;->parseInclude(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/ime/framework/view/Keyboard$Row;IIFZ)I

    move-result v7

    goto/16 :goto_0

    :cond_16
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v12, p2

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v18}, Lcom/ime/framework/view/Keyboard;->parseInclude(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/ime/framework/view/Keyboard$Row;IIFZ)I

    move-result v8

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v3, "Key"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v25, :cond_19

    if-eqz v26, :cond_19

    const/16 v25, 0x0

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, v26

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    move-object/from16 v0, v26

    iget v4, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    add-int/2addr v7, v3

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    if-le v7, v3, :cond_3

    move-object/from16 v0, p0

    iput v7, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    goto/16 :goto_0

    :cond_19
    const-string v3, "Row"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int/2addr v8, v3

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int/2addr v8, v3

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    add-int/2addr v7, v3

    iget v3, v6, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    if-le v3, v4, :cond_1a

    move-object/from16 v0, p0

    iput v7, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    if-ge v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/ime/framework/view/Keyboard;->addRightEdgeFlag(Lcom/ime/framework/view/Keyboard$Row;I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->row:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->row:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    if-eqz v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setDefaultKeyboardHeight(I)V

    goto/16 :goto_6
.end method

.method private parseInclude(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/ime/framework/view/Keyboard$Row;IIFZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/view/Keyboard;->parseIncludeAsInRow(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Lcom/ime/framework/view/Keyboard$Row;II)I

    move-result p6

    move v0, p6

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/ime/framework/view/Keyboard;->parseIncludeAsInKeyboard(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Lcom/ime/framework/view/Keyboard$Row;IIFZ)I

    move-result v0

    goto :goto_0
.end method

.method private parseIncludeAsInKeyboard(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Lcom/ime/framework/view/Keyboard$Row;IIFZ)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/16 v23, 0x0

    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Row_Include:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/4 v3, 0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_b

    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v3, "Row"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/ime/framework/view/Keyboard;->createRowFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Row;

    move-result-object p4

    const/16 p5, 0x0

    if-eqz p8, :cond_1

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    int-to-float v4, v4

    mul-float v4, v4, p7

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p4

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    int-to-float v3, v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    int-to-float v4, v4

    mul-float v4, v4, p7

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p4

    iput v3, v0, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    if-eqz v3, :cond_3

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mKeyboardMode:I

    if-eq v3, v4, :cond_3

    const/16 v23, 0x1

    :goto_1
    if-nez v23, :cond_2

    move-object/from16 v0, p4

    iget-boolean v3, v0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    if-nez v3, :cond_0

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ime/framework/view/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    :cond_4
    const-string v3, "Key"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v21, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/ime/framework/view/Keyboard;->createKey(Landroid/content/Context;Landroid/content/res/XmlResourceParser;IILcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Row;Landroid/content/res/Resources;)Lcom/ime/framework/view/Keyboard$Key;

    move-result-object v8

    goto/16 :goto_0

    :cond_5
    const-string v3, "include"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v13, :cond_6

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v5

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v9 .. v18}, Lcom/ime/framework/view/Keyboard;->parseInclude(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/ime/framework/view/Keyboard$Row;IIFZ)I

    move-result p5

    goto/16 :goto_0

    :cond_6
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v5

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v9 .. v18}, Lcom/ime/framework/view/Keyboard;->parseInclude(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/ime/framework/view/Keyboard$Row;IIFZ)I

    move-result p6

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v3, "Key"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v21, :cond_8

    if-eqz v8, :cond_8

    const/16 v21, 0x0

    iget v3, v8, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    iget v4, v8, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    add-int p5, p5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move/from16 v0, p5

    if-le v0, v3, :cond_0

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    :cond_8
    :try_start_1
    const-string v3, "Row"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int p6, p6, v3

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int p6, p6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->row:I

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/ime/framework/view/Keyboard;->addTopEdgeFlag(Lcom/ime/framework/view/Keyboard$Row;)V

    :cond_9
    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    add-int p5, p5, v3

    move-object/from16 v0, p4

    iget v3, v0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    add-int v3, v3, p5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    if-le v3, v4, :cond_a

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    if-ge v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/Keyboard;->addRightEdgeFlag(Lcom/ime/framework/view/Keyboard$Row;I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/Keyboard;->row:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/view/Keyboard;->row:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    return p6
.end method

.method private parseIncludeAsInRow(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Lcom/ime/framework/view/Keyboard$Row;II)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Row_Include:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v10, v2, v3, v5}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-lez v15, :cond_0

    const/4 v13, 0x1

    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    add-int p5, p5, v15

    :cond_1
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v2, 0x1

    if-eq v11, v2, :cond_4

    const/4 v2, 0x2

    if-ne v11, v2, :cond_2

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v2, "Key"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v12, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/ime/framework/view/Keyboard;->createKey(Landroid/content/Context;Landroid/content/res/XmlResourceParser;IILcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Row;Landroid/content/res/Resources;)Lcom/ime/framework/view/Keyboard$Key;

    move-result-object v7

    if-eqz v13, :cond_1

    iget v2, v7, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v3, v7, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    sub-int/2addr v2, v3

    iput v2, v7, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iput v15, v7, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v11, v2, :cond_1

    if-eqz v12, :cond_1

    if-eqz v7, :cond_1

    const/4 v12, 0x0

    if-eqz v13, :cond_3

    iget v2, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int p5, p5, v2

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move/from16 v0, p5

    if-le v0, v2, :cond_1

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    goto :goto_0

    :cond_3
    iget v2, v7, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    iget v3, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int p5, p5, v2

    goto :goto_1

    :cond_4
    return p5
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v4, v1, v2}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    const/4 v1, 0x2

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    const/16 v1, 0xa

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    const/16 v1, 0xb

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mBottomPadding:I

    const/16 v1, 0x8

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mLeftPadding:I

    const/16 v1, 0x9

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mRightPadding:I

    sget-object v1, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    const v2, 0x7f0900fe

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mTopPadding:I

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Lcom/ime/framework/view/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/ime/framework/view/Keyboard;->mProximityThreshold:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Key;
    .locals 7

    new-instance v0, Lcom/ime/framework/view/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/view/Keyboard$Key;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/ime/framework/view/Keyboard$Row;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/Keyboard$Row;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ime/framework/view/Keyboard$Row;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/Keyboard;->computeNearestNeighbors()V

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget v1, p0, Lcom/ime/framework/view/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/ime/framework/view/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method protected getRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/view/Keyboard$Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/Keyboard;->mShifted:Z

    return v0
.end method

.method protected setDisplayWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/Keyboard;->mTotalDisplayWidth:I

    return-void
.end method

.method protected setHorizontalGap(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I

    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I

    return-void
.end method

.method public setShifted(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    iput-boolean p1, v3, Lcom/ime/framework/view/Keyboard$Key;->on:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/ime/framework/view/Keyboard;->mShifted:Z

    if-eq v4, p1, :cond_2

    iput-boolean p1, p0, Lcom/ime/framework/view/Keyboard;->mShifted:Z

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected setTotalWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/Keyboard;->mTotalWidth:I

    return-void
.end method

.method protected setVerticalGap(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    return-void
.end method

.method public updateKeys()V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    # getter for: Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I
    invoke-static {v1}, Lcom/ime/framework/view/Keyboard$Key;->access$1400(Lcom/ime/framework/view/Keyboard$Key;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    # getter for: Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I
    invoke-static {v1}, Lcom/ime/framework/view/Keyboard$Key;->access$1400(Lcom/ime/framework/view/Keyboard$Key;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getCodeValues(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    sget-object v2, Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    # getter for: Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I
    invoke-static {v1}, Lcom/ime/framework/view/Keyboard$Key;->access$1400(Lcom/ime/framework/view/Keyboard$Key;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLabelValues(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    sget-object v2, Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    # getter for: Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I
    invoke-static {v1}, Lcom/ime/framework/view/Keyboard$Key;->access$1400(Lcom/ime/framework/view/Keyboard$Key;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getPopupCharsString(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x73

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, v1, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    return-void
.end method
