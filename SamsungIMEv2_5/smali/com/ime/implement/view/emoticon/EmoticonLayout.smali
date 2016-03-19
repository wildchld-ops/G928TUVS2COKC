.class public Lcom/ime/implement/view/emoticon/EmoticonLayout;
.super Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;
.source "EmoticonLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getABC(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 3

    const v2, 0x7f0d00cf

    const v1, 0x7f0d00ce

    sparse-switch p2, :sswitch_data_0

    const v1, 0x7f0d00c0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const v1, 0x7f0d00c2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0d00c3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0d00c4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0d00c5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v1, 0x7f0d00c6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v1, 0x7f0d00cd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v1, 0x7f0d00d0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const v1, 0x7f0d00d1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const v1, 0x7f0d00d2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    const v1, 0x7f0d00d4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const v1, 0x7f0d00d3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    const v1, 0x7f0d00d5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    const v1, 0x7f0d00d6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_10
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_11
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    const v1, 0x7f0d00d7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    const v1, 0x7f0d00d8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    const v1, 0x7f0d00d9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    const v1, 0x7f0d00da

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_1
        0x61730000 -> :sswitch_10
        0x626e0000 -> :sswitch_7
        0x66610000 -> :sswitch_2
        0x67750000 -> :sswitch_8
        0x68690000 -> :sswitch_6
        0x69770000 -> :sswitch_4
        0x6b6d0000 -> :sswitch_15
        0x6b6e0000 -> :sswitch_9
        0x6b6f0000 -> :sswitch_0
        0x6d6c0000 -> :sswitch_a
        0x6d720000 -> :sswitch_b
        0x6d794d4d -> :sswitch_13
        0x6e650000 -> :sswitch_11
        0x6f720000 -> :sswitch_12
        0x70610000 -> :sswitch_d
        0x73690000 -> :sswitch_c
        0x74610000 -> :sswitch_e
        0x74650000 -> :sswitch_f
        0x74680000 -> :sswitch_5
        0x75720000 -> :sswitch_3
        0x7a314d4d -> :sswitch_14
    .end sparse-switch
.end method

.method protected getEmoticonCountInRow()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getEmoticonFontSize()F
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090561

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/emoticon/EmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090562

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    :cond_0
    :goto_0
    int-to-float v2, v1

    return v2

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected getEmoticonHeight()I
    .locals 6

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090564

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/emoticon/EmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090566

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/emoticon/EmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090bb9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method

.method protected getEmoticonTypeface()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    const-string v1, "DROIDSANS"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method protected getEmoticonWidth()I
    .locals 6

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090563

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/emoticon/EmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090565

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/emoticon/EmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090bb8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method

.method protected getItemBackgroundResId()I
    .locals 1

    const v0, 0x7f0205d3

    return v0
.end method

.method protected getLastestEmoticonCount()I
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getListLayoutHeight()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090725

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b56

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09087a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090567

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    iget-object v2, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public getListPaddingBottom()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b5a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09087f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09056c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getListPaddingLeft()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b57

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09087c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09087b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getListPaddingRight()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b59

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09087d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09056b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getListPaddingTop()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09087e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/emoticon/EmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09056a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method
