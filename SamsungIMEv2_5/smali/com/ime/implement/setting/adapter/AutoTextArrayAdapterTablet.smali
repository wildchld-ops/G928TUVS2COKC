.class public Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
.super Landroid/widget/ArrayAdapter;
.source "AutoTextArrayAdapterTablet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_CODE:I = 0xac00

.field private static final FIRST:I = 0x24c


# instance fields
.field private final CHOSUNG_LIST:[C

.field private LastFirstWord:Ljava/lang/String;

.field private mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

.field private mContext:Landroid/content/Context;

.field private mHeaderIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionMode:Z

.field private mSeletedUserTermIndex:I

.field private mUserWordArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWordCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->LastFirstWord:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSelectionMode:Z

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->CHOSUNG_LIST:[C

    iput-object p3, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordArrayList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordCheckList:Ljava/util/List;

    iput-object p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSeletedUserTermIndex:I

    iput-object p4, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    return-void

    :array_0
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data
.end method

.method static synthetic access$002(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSeletedUserTermIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSelectionMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordCheckList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordArrayList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCheckListSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    return-object v0
.end method

.method public getSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSelectionMode:Z

    return v0
.end method

.method public getSeletedUserTerm()Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSeletedUserTermIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    return-object v0
.end method

.method public getUserWordCheckList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordCheckList:Ljava/util/List;

    return-object v0
.end method

.method public getUserWordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordArrayList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-nez p2, :cond_0

    iget-object v12, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v12, 0x7f030006

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getCount()I

    move-result v12

    move/from16 v0, p1

    if-lt v0, v12, :cond_1

    const/16 p2, 0x0

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    const v12, 0x7f100017

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v12, 0x7f100018

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v12, 0x7f100016

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v12, 0x7f100015

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v12

    invoke-virtual {v12}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v12

    invoke-virtual {v12}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f100014

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v0, p1

    if-le v12, v0, :cond_2

    iget-object v12, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v12, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSelectionMode:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v12, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordCheckList:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iput-object v6, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->LastFirstWord:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v12, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$1;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$1;-><init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;I)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$2;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$2;-><init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;I)V

    invoke-virtual {v5, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;-><init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;I)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    :cond_2
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public setHeaderIndex()V
    .locals 13

    const v12, 0xac00

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordArrayList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordArrayList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_0

    const v8, 0xd7a3

    if-gt v3, v8, :cond_0

    sub-int v0, v3, v12

    div-int/lit16 v0, v0, 0x24c

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->CHOSUNG_LIST:[C

    aget-char v8, v8, v0

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->LastFirstWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->LastFirstWord:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mHeaderIndex:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mSelectionMode:Z

    return-void
.end method
