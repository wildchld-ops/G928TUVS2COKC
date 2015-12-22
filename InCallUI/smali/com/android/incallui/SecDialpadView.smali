.class public Lcom/android/incallui/SecDialpadView;
.super Lcom/android/phone/common/dialpad/DialpadView;
.source "SecDialpadView.java"


# instance fields
.field private hebrew:Ljava/lang/String;

.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mOverflowMenuButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100087
        0x7f100083
        0x7f100079
        0x7f10007a
        0x7f10007b
        0x7f10007c
        0x7f10007d
        0x7f10007e
        0x7f10007f
        0x7f100080
        0x7f100086
        0x7f100085
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100087
        0x7f100083
        0x7f100079
        0x7f10007a
        0x7f10007b
        0x7f10007c
        0x7f10007d
        0x7f10007e
        0x7f10007f
        0x7f100080
        0x7f100086
        0x7f100085
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100087
        0x7f100083
        0x7f100079
        0x7f10007a
        0x7f10007b
        0x7f10007c
        0x7f10007d
        0x7f10007e
        0x7f10007f
        0x7f100080
        0x7f100086
        0x7f100085
    .end array-data
.end method

.method private setupKeypad()V
    .locals 24

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecDialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecDialpadView;->hebrew:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecDialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecDialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v21, 0x7f100081

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v21, 0x7f100082

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v21, 0x7f100197

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    if-nez v7, :cond_5

    if-eqz v17, :cond_5

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    aget v21, v11, v6

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-virtual {v4, v12}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v21, "\u2217"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v9, :cond_2

    aget v21, v8, v6

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v17, :cond_3

    aget v21, v16, v6

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v21, "support_dialpad_by_hardkey"

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setFocusable(Z)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v7, :cond_0

    if-eqz v17, :cond_0

    aget v21, v16, v6

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a035a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0358

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0356

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v5, v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0446

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a042f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v5, v0

    :cond_6
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_7
    const v21, 0x7f100083

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v21, 0x7f0d001b

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v21, 0x7f100087

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v21, 0x7f0d001a

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f0d0000
        0x7f0d0001
        0x7f0d0002
        0x7f0d0003
        0x7f0d0004
        0x7f0d0005
        0x7f0d0006
        0x7f0d0007
        0x7f0d0008
        0x7f0d0009
        0x7f0d000a
        0x7f0d000b
    .end array-data

    :array_1
    .array-data 4
        0x7f0d000c
        0x7f0d000d
        0x7f0d000e
        0x7f0d000f
        0x7f0d0010
        0x7f0d0011
        0x7f0d0012
        0x7f0d0013
        0x7f0d0014
        0x7f0d0015
        0x7f0d0016
        0x7f0d0017
    .end array-data

    :array_2
    .array-data 4
        0x7f0d038c
        0x7f0d038d
        0x7f0d038e
        0x7f0d038f
        0x7f0d0390
        0x7f0d0391
        0x7f0d0392
        0x7f0d0393
        0x7f0d0394
        0x7f0d0395
        0x7f0d0396
        0x7f0d0397
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadView;->setupKeypad()V

    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f10008a

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadView;->mOverflowMenuButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecDialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    return-void
.end method
