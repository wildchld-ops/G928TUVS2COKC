.class public Lcom/ime/framework/view/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_CTRL_MODIFIER:[I

.field private static final KEY_STATE_CTRL_MODIFIER_PRESSED:[I

.field private static final KEY_STATE_DISABLED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I

.field private static final SHIFT_KEY_STATE_CAPS:[I

.field private static final SHIFT_KEY_STATE_SHIFTED:[I


# instance fields
.field public backgroundDrawable:I

.field public bottomkeyindex:I

.field public codes:[I

.field public currentkeyindex:I

.field public disabled:Z

.field public edgeFlags:I

.field public focusstate:Z

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public isCtrlModifierKey:Z

.field public isInCapsMode:Z

.field public isInShiftedMode:Z

.field private keyboard:Lcom/ime/framework/view/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public leftkeyindex:I

.field public mBottom:I

.field private mKeyMapIndex:I

.field public mLeft:I

.field public mRight:I

.field public mTop:I

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public pressedstate:Z

.field public repeatable:Z

.field public rightkeyindex:I

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public topkeyindex:I

.field public visibility:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_NORMAL:[I

    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_PRESSED:[I

    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_DISABLED:[I

    new-array v0, v3, [I

    const v1, 0x7f010039

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->SHIFT_KEY_STATE_SHIFTED:[I

    new-array v0, v3, [I

    const v1, 0x7f01003a

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->SHIFT_KEY_STATE_CAPS:[I

    new-array v0, v3, [I

    const v1, 0x7f01003b

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_CTRL_MODIFIER:[I

    new-array v0, v3, [I

    const v1, 0x7f01003c

    aput v1, v0, v2

    sput-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_CTRL_MODIFIER_PRESSED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 12

    invoke-direct {p0, p3}, Lcom/ime/framework/view/Keyboard$Key;-><init>(Lcom/ime/framework/view/Keyboard$Row;)V

    move/from16 v0, p4

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v0, p5

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    invoke-static/range {p6 .. p6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/sec/android/inputmethod/R$styleable;->Keyboard:[I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    :goto_0
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ime/framework/view/Keyboard$Key;->keyboard:Lcom/ime/framework/view/Keyboard;

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {v8}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v8

    iget v9, p3, Lcom/ime/framework/view/Keyboard$Row;->defaultWidth:I

    invoke-static {v1, v7, v8, v9}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/ime/framework/view/Keyboard$Key;->keyboard:Lcom/ime/framework/view/Keyboard;

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I
    invoke-static {v8}, Lcom/ime/framework/view/Keyboard;->access$200(Lcom/ime/framework/view/Keyboard;)I

    move-result v8

    iget v9, p3, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    invoke-static {v1, v7, v8, v9}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/ime/framework/view/Keyboard$Key;->keyboard:Lcom/ime/framework/view/Keyboard;

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {v8}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v8

    iget v9, p3, Lcom/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    invoke-static {v1, v7, v8, v9}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p6 .. p6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v8, p0, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v7, v2, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x10

    if-eq v7, v8, :cond_0

    iget v7, v2, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x11

    if-ne v7, v8, :cond_f

    :cond_0
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget v9, v2, Landroid/util/TypedValue;->data:I

    aput v9, v7, v8

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    :cond_1
    :goto_1
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->popupResId:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->repeatable:Z

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->modifier:Z

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->sticky:Z

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iget v8, p3, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v7, v8

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, p0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    if-nez v7, :cond_13

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_10

    iput v5, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    # getter for: Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$1200()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getCodeValues(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    # getter for: Lcom/ime/framework/view/Keyboard;->mIsChnMode:Z
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_11

    # getter for: Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$700()Lcom/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v7

    if-eqz v7, :cond_11

    const/16 v7, 0x1a

    if-ge v5, v7, :cond_11

    sget-object v7, Lcom/ime/framework/view/Keyboard;->mDPYNuanceLayoutMap:[[I

    aget-object v7, v7, v5

    array-length v7, v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    :goto_2
    sget-object v7, Lcom/ime/framework/view/Keyboard;->mDPYNuanceLayoutMap:[[I

    aget-object v7, v7, v5

    array-length v7, v7

    if-ge v4, v7, :cond_11

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    sget-object v8, Lcom/ime/framework/view/Keyboard;->mDPYNuanceLayoutMap:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    # getter for: Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$700()Lcom/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "tablet"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/ime/framework/view/Keyboard;->mIsChnMode:Z
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "china"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_7
    const-string v7, "phone"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v3, :cond_8

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_8
    const-string v7, "phone"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "common"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_9
    const-string v7, "common"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_b
    const-string v7, "phone"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "common"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    if-nez v3, :cond_d

    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_d
    const-string v7, "common"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    goto/16 :goto_0

    :cond_f
    iget v7, v2, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    iget-object v7, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    goto/16 :goto_1

    :cond_10
    # getter for: Lcom/ime/framework/view/Keyboard$Row;->parent:Lcom/ime/framework/view/Keyboard;
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard$Row;->access$1000(Lcom/ime/framework/view/Keyboard$Row;)Lcom/ime/framework/view/Keyboard;

    move-result-object v7

    # getter for: Lcom/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/ime/framework/view/Keyboard;->access$1300(Lcom/ime/framework/view/Keyboard;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    # getter for: Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$1200()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-result-object v7

    iget v8, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    invoke-virtual {v7, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getCodeValues(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    :cond_11
    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v7, :cond_13

    # getter for: Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$1200()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-result-object v7

    iget v8, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    invoke-virtual {v7, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLabelValues(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    # getter for: Lcom/ime/framework/view/Keyboard;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$1200()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-result-object v7

    iget v8, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    invoke-virtual {v7, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getPopupCharsString(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x73

    if-ne v7, v8, :cond_13

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_12

    const-string v7, ""

    iget-object v8, p0, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_12
    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :cond_13
    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    aput v9, v7, v8

    iput-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    :cond_14
    const/16 v7, 0xd

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->leftkeyindex:I

    const/16 v7, 0xe

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->rightkeyindex:I

    const/16 v7, 0xf

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->topkeyindex:I

    const/16 v7, 0x10

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->bottomkeyindex:I

    const/16 v7, 0x11

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->currentkeyindex:I

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->focusstate:Z

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/ime/framework/view/Keyboard$Key;->pressedstate:Z

    move/from16 v0, p4

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->mLeft:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int v7, v7, p4

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->mRight:I

    move/from16 v0, p5

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->mTop:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int v7, v7, p5

    iput v7, p0, Lcom/ime/framework/view/Keyboard$Key;->mBottom:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/ime/framework/view/Keyboard$Row;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->sticky:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->on:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->visibility:Z

    iput v1, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->modifier:Z

    iput v1, p0, Lcom/ime/framework/view/Keyboard$Key;->popupResId:I

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->repeatable:Z

    iput v1, p0, Lcom/ime/framework/view/Keyboard$Key;->backgroundDrawable:I

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isInShiftedMode:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isInCapsMode:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isCtrlModifierKey:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->disabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    # getter for: Lcom/ime/framework/view/Keyboard$Row;->parent:Lcom/ime/framework/view/Keyboard;
    invoke-static {p1}, Lcom/ime/framework/view/Keyboard$Row;->access$1000(Lcom/ime/framework/view/Keyboard$Row;)Lcom/ime/framework/view/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard$Key;->keyboard:Lcom/ime/framework/view/Keyboard;

    iget v0, p1, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    iget v0, p1, Lcom/ime/framework/view/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    iget v0, p1, Lcom/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    iget v0, p1, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    iput v0, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    return-void
.end method

.method static synthetic access$1400(Lcom/ime/framework/view/Keyboard$Key;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/Keyboard$Key;->mKeyMapIndex:I

    return v0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_NORMAL:[I

    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_3

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->disabled:Z

    if-eqz v1, :cond_5

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_DISABLED:[I

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isCtrlModifierKey:Z

    if-eqz v1, :cond_6

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_CTRL_MODIFIER_PRESSED:[I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isInShiftedMode:Z

    if-eqz v1, :cond_8

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->SHIFT_KEY_STATE_SHIFTED:[I

    goto :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isInCapsMode:Z

    if-eqz v1, :cond_9

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->SHIFT_KEY_STATE_CAPS:[I

    goto :goto_0

    :cond_9
    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->isCtrlModifierKey:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ime/framework/view/Keyboard$Key;->KEY_STATE_CTRL_MODIFIER:[I

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_4

    move v1, v4

    :goto_0
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_5

    move v2, v4

    :goto_1
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_6

    move v3, v4

    :goto_2
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x8

    if-lez v6, :cond_7

    move v0, v4

    :goto_3
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_0

    if-eqz v1, :cond_8

    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_8

    :cond_0
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_1

    if-eqz v2, :cond_8

    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_8

    :cond_1
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge p2, v6, :cond_2

    if-eqz v3, :cond_8

    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_8

    :cond_2
    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_3

    if-eqz v0, :cond_8

    iget v6, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_8

    :cond_3
    :goto_4
    return v4

    :cond_4
    move v1, v5

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_4
.end method

.method public onPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    iget-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->on:Z

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->on:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 10

    if-nez p1, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    const-string v7, ","

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v6, v0, [I

    const/4 v0, 0x0

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v7, "0x"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v0

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_2
    const-string v7, "Keyboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing keycodes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    move v0, v1

    goto :goto_2
.end method

.method public setCapsMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->isInCapsMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->isInShiftedMode:Z

    return-void
.end method

.method public setNonShiftedMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->isInShiftedMode:Z

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->isInCapsMode:Z

    return-void
.end method

.method public setShiftedMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->isInShiftedMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Key;->isInCapsMode:Z

    return-void
.end method

.method public squaredDistanceFrom(II)I
    .locals 4

    iget v2, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v3, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    iget v2, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v3, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
